import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sqlite;
import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;
import '../models/database_models.dart';
import '../widgets/database_content_viewer.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DatabaseHelper {
  final String dbPath;
  final DbType dbType;

  sqlite.Database? _sqliteDb;
  Box<dynamic>? _hiveBox;

  DatabaseHelper({
    required this.dbPath,
    required this.dbType,
  });

  Future<void> openDatabase() async {
    try {
      if (dbType == DbType.sqlite) {
        await _openSqliteDatabase();
      } else if (dbType == DbType.hive) {
        await _openHiveDatabase();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _openSqliteDatabase() async {
    try {
      // Initialize FFI
      sqfliteFfiInit();
      // Set the database factory
      databaseFactory = databaseFactoryFfi;

      // Check if file exists
      if (!await File(dbPath).exists()) {
        throw Exception('Database file does not exist');
      }

      _sqliteDb = await sqlite.openDatabase(
        dbPath,
        readOnly: true, // Open in read-only mode to prevent accidental changes
      );
    } catch (e) {
      throw Exception('Failed to open SQLite database: ${e.toString()}');
    }
  }

  Future<void> _openHiveDatabase() async {
    try {
      // Extract directory from path
      final directory = path.dirname(dbPath);
      final boxName = path.basenameWithoutExtension(dbPath);

      // Initialize Hive and open the box
      Hive.init(directory);
      _hiveBox = await Hive.openBox(boxName);
    } catch (e) {
      throw Exception('Failed to open Hive database: ${e.toString()}');
    }
  }

  Future<List<String>> getTables() async {
    try {
      if (dbType == DbType.sqlite) {
        return await _getSqliteTables();
      } else if (dbType == DbType.hive) {
        return await _getHiveBoxes();
      }
      return [];
    } catch (e) {
      throw Exception('Failed to get tables: ${e.toString()}');
    }
  }

  Future<List<String>> _getSqliteTables() async {
    if (_sqliteDb == null) {
      throw Exception('Database not opened');
    }

    // Query sqlite_master table to get all tables
    final tables = await _sqliteDb!.query(
      'sqlite_master',
      columns: ['name'],
      where:
          "type = 'table' AND name NOT LIKE 'sqlite_%' AND name NOT LIKE 'android_%'",
    );

    return tables.map((table) => table['name'] as String).toList();
  }

  Future<List<String>> _getHiveBoxes() async {
    if (_hiveBox == null) {
      throw Exception('Hive box not opened');
    }

    // In Hive, we can represent the keys as "tables"
    final keys = _hiveBox!.keys.toList();
    if (keys.isEmpty) {
      // If no keys, return a single entry representing the box itself
      return [path.basenameWithoutExtension(dbPath)];
    }
    return keys.map((key) => key.toString()).toList();
  }

  Future<List<Map<String, dynamic>>> getTableData(String tableName) async {
    try {
      if (dbType == DbType.sqlite) {
        return await _getSqliteTableData(tableName);
      } else if (dbType == DbType.hive) {
        return await _getHiveBoxData(tableName);
      }
      return [];
    } catch (e) {
      throw Exception('Failed to get table data: ${e.toString()}');
    }
  }

  Future<List<Map<String, dynamic>>> _getSqliteTableData(
      String tableName) async {
    if (_sqliteDb == null) {
      throw Exception('Database not opened');
    }

    // Query to get table structure
    final tableInfo =
        await _sqliteDb!.rawQuery("PRAGMA table_info($tableName)");

    // Query to get all data from the table
    final List<Map<String, dynamic>> data = await _sqliteDb!.query(tableName);

    // Process blobs in the result
    for (var row in data) {
      for (var key in row.keys) {
        final value = row[key];
        if (value is Uint8List) {
          row[key] = Blob(value);
        }
      }
    }

    // If data is empty, return a list with column headers only
    if (data.isEmpty) {
      final Map<String, dynamic> emptyRow = {};
      for (var column in tableInfo) {
        emptyRow[column['name'] as String] = null;
      }
      return [emptyRow];
    }

    return data;
  }

  Future<List<Map<String, dynamic>>> _getHiveBoxData(String boxKey) async {
    if (_hiveBox == null) {
      throw Exception('Hive box not opened');
    }

    try {
      final List<Map<String, dynamic>> result = [];

      // Check if we're viewing the box itself (all keys) or a specific key
      if (boxKey == path.basenameWithoutExtension(dbPath)) {
        // Return all keys and their values
        for (var key in _hiveBox!.keys) {
          final value = _hiveBox!.get(key);

          if (value is Map) {
            // If value is already a map, add it with key info
            final Map<String, dynamic> row =
                Map<String, dynamic>.from(value);
            row['_key'] = key;
            result.add(row);
          } else {
            // Otherwise create a simple key-value pair
            result.add({
              '_key': key,
              'value': value?.toString() ?? 'null',
            });
          }
        }
      } else {
        // View specific key value
        final value = _hiveBox!.get(boxKey);

        if (value is Map) {
          // If value is a map, convert each entry
          (value).forEach((k, v) {
            result.add({
              'key': k.toString(),
              'value': v?.toString() ?? 'null',
            });
          });
        } else if (value is List) {
          // If value is a list, add each item with index
          for (int i = 0; i < (value).length; i++) {
            result.add({
              'index': i,
              'value': value[i]?.toString() ?? 'null',
            });
          }
        } else {
          // Simple value
          result.add({
            'value': value?.toString() ?? 'null',
          });
        }
      }

      return result;
    } catch (e) {
      debugPrint('Error getting Hive data: $e');
      throw Exception('Failed to get Hive data: ${e.toString()}');
    }
  }

  Future<List<Map<String, dynamic>>> executeQuery(String query) async {
    try {
      if (dbType == DbType.sqlite) {
        return await _executeSqliteQuery(query);
      } else if (dbType == DbType.hive) {
        throw Exception('SQL queries are not supported for Hive databases');
      }
      return [];
    } catch (e) {
      throw Exception('Failed to execute query: ${e.toString()}');
    }
  }

  Future<List<Map<String, dynamic>>> _executeSqliteQuery(String query) async {
    if (_sqliteDb == null) {
      throw Exception('Database not opened');
    }

    try {
      final result = await _sqliteDb!.rawQuery(query);

      // Process blobs in the result
      for (var row in result) {
        for (var key in row.keys) {
          final value = row[key];
          if (value is Uint8List) {
            row[key] = Blob(value);
          }
        }
      }

      return result;
    } catch (e) {
      throw Exception('SQL query error: ${e.toString()}');
    }
  }

  Future<void> close() async {
    try {
      if (dbType == DbType.sqlite && _sqliteDb != null) {
        await _sqliteDb!.close();
        _sqliteDb = null;
      } else if (dbType == DbType.hive && _hiveBox != null) {
        await _hiveBox!.close();
        _hiveBox = null;
      }
    } catch (e) {
      throw Exception('Failed to close database: ${e.toString()}');
    }
  }
}
