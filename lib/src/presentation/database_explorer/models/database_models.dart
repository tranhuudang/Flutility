import 'package:flutter/material.dart';

/// Enum to represent the different types of databases supported
enum DbType {
  sqlite,
  hive,
}

/// Model class to represent a database column
class DatabaseColumn {
  final String name;
  final String type;
  final bool isPrimaryKey;
  final bool isNullable;

  DatabaseColumn({
    required this.name,
    required this.type,
    this.isPrimaryKey = false,
    this.isNullable = true,
  });
}

/// Model class to represent a database table
class DatabaseTable {
  final String name;
  final List<DatabaseColumn> columns;

  DatabaseTable({
    required this.name,
    required this.columns,
  });
}

/// Class to represent a single row of data
class DatabaseRow {
  final Map<String, dynamic> data;

  DatabaseRow(this.data);

  dynamic operator [](String columnName) => data[columnName];
}

/// Extensions on DbType
extension DbTypeExtension on DbType {
  String get displayName {
    switch (this) {
      case DbType.sqlite:
        return 'SQLite';
      case DbType.hive:
        return 'Hive';
    }
  }

  IconData get icon {
    switch (this) {
      case DbType.sqlite:
        return Icons.storage;
      case DbType.hive:
        return Icons.hive;
    }
  }
}
