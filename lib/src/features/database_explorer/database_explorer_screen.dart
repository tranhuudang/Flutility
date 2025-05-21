import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutility/src/app/app.dart';
import 'package:file_picker/file_picker.dart';
import 'models/database_models.dart';
import 'utils/database_helper.dart';
import 'widgets/database_content_viewer.dart';

class DatabaseExplorerScreen extends StatefulWidget {
  const DatabaseExplorerScreen({super.key});

  @override
  State<DatabaseExplorerScreen> createState() => _DatabaseExplorerScreenState();
}

class _DatabaseExplorerScreenState extends State<DatabaseExplorerScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController _pathController = TextEditingController();
  DbType _selectedDbType = DbType.sqlite;
  DatabaseHelper? _databaseHelper;
  List<String> _tables = [];
  String? _selectedTable;
  List<Map<String, dynamic>> _tableData = [];
  bool _isLoading = false;
  late TabController _tabController;
  String _statusMessage = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _pathController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _pickDatabaseFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: _selectedDbType == DbType.sqlite
            ? ['db', 'sqlite', 'sqlite3']
            : ['hive'],
      );

      if (result != null) {
        setState(() {
          _pathController.text = result.files.single.path!;
          _tables = [];
          _selectedTable = null;
          _tableData = [];
        });
      }
    } catch (e) {
      _showError('Error picking file: ${e.toString()}');
    }
  }

  Future<void> _loadDatabase() async {
    if (_pathController.text.isEmpty) {
      _showError('Please select a database file first');
      return;
    }

    setState(() {
      _isLoading = true;
      _statusMessage = 'Loading database...';
    });

    try {
      _databaseHelper = DatabaseHelper(
        dbPath: _pathController.text,
        dbType: _selectedDbType,
      );

      await _databaseHelper!.openDatabase();
      final tables = await _databaseHelper!.getTables();

      setState(() {
        _tables = tables;
        _isLoading = false;
        _statusMessage = 'Database loaded successfully';
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _statusMessage = 'Error: ${e.toString()}';
      });
      _showError('Failed to load database: ${e.toString()}');
    }
  }

  Future<void> _loadTableData() async {
    if (_selectedTable == null) return;

    setState(() {
      _isLoading = true;
      _statusMessage = 'Loading table $_selectedTable...';
    });

    try {
      final data = await _databaseHelper!.getTableData(_selectedTable!);
      setState(() {
        _tableData = data;
        _isLoading = false;
        _statusMessage =
            'Table $_selectedTable loaded with ${data.length} records';
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _statusMessage = 'Error: ${e.toString()}';
      });
      _showError('Failed to load table data: ${e.toString()}');
    }
  }

  void _showError(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.database_20_regular),
        title: Text("Database Explorer".i18n),
        actions: [
          Opacity(
            opacity: 0.5,
            child: Text(
              'Only for small databases'.i18n,
              style: TextStyle(color: context.theme.colorScheme.error),
            ),
          ),
          16.width,
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(FluentIcons.database_search_20_regular),
                  8.width,
                  Text("Explorer".i18n),
                ],
              ),
            ),
            Tab(
              height: 40,
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(FluentIcons.database_search_20_regular),
                  8.width,
                  Text("Query".i18n),
                ],
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildExplorerTab(),
          _buildQueryTab(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8.0),
        color: Theme.of(context)
            .colorScheme
            .surfaceContainerHighest
            .withValues(alpha: 0.3),
        child: Text(_statusMessage),
      ),
    );
  }

  Widget _buildExplorerTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Database type selection
          Row(
            children: [
              Text("Database Type:".i18n,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(width: 16),
              DropdownButton<DbType>(
                value: _selectedDbType,
                onChanged: (DbType? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _selectedDbType = newValue;
                      _tables = [];
                      _selectedTable = null;
                      _tableData = [];
                    });
                  }
                },
                items:
                    DbType.values.map<DropdownMenuItem<DbType>>((DbType value) {
                  return DropdownMenuItem<DbType>(
                    value: value,
                    child: Text(value.toString().split('.').last),
                  );
                }).toList(),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Database file path input
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _pathController,
                  decoration: InputDecoration(
                    labelText: "Database Path".i18n,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.folder_open),
                      onPressed: _pickDatabaseFile,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton.icon(
                onPressed: _loadDatabase,
                icon: const Icon(FluentIcons.database_search_20_regular),
                label: Text("Load".i18n),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Table selection dropdown
          if (_tables.isNotEmpty)
            Row(
              children: [
                Text("Select Table:".i18n,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 16),
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: _selectedTable,
                    hint: Text("Select a table".i18n),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedTable = newValue;
                        _tableData = [];
                      });
                      _loadTableData();
                    },
                    items:
                        _tables.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 16),

          // Table data display
          if (_isLoading)
            const Center(child: CircularProgressIndicator())
          else if (_tableData.isNotEmpty)
            Expanded(
              child: DatabaseContentViewer(data: _tableData),
            )
          else if (_tables.isNotEmpty)
            Center(child: Text("Select a table to view its data".i18n))
          else
            Center(child: Text("Load a database to see available tables".i18n)),
        ],
      ),
    );
  }

  Widget _buildQueryTab() {
    final queryController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Database loaded indicator
          if (_databaseHelper != null && _tables.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Connected to: ${_pathController.text}".i18n,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          // SQL query input
          TextField(
            controller: queryController,
            maxLines: 4,
            decoration: InputDecoration(
              labelText: "SQL Query".i18n,
              hintText: "SELECT * FROM table_name WHERE condition",
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),

          // Execute query button
          ElevatedButton.icon(
            onPressed: _databaseHelper != null && _tables.isNotEmpty
                ? () async {
                    if (queryController.text.isEmpty) return;

                    setState(() {
                      _isLoading = true;
                      _statusMessage = 'Executing query...';
                    });

                    try {
                      final result = await _databaseHelper!
                          .executeQuery(queryController.text);
                      setState(() {
                        _tableData = result;
                        _isLoading = false;
                        _statusMessage =
                            'Query executed: ${result.length} records returned';
                      });
                    } catch (e) {
                      setState(() {
                        _isLoading = false;
                        _statusMessage = 'Error: ${e.toString()}';
                      });
                      _showError('Query execution failed: ${e.toString()}');
                    }
                  }
                : null,
            icon: const Icon(FluentIcons.play_20_regular),
            label: Text("Execute Query".i18n),
          ),
          const SizedBox(height: 16),

          // Query results
          if (_isLoading)
            const Center(child: CircularProgressIndicator())
          else if (_tableData.isNotEmpty)
            Expanded(
              child: DatabaseContentViewer(data: _tableData),
            )
          else if (_databaseHelper != null && _tables.isNotEmpty)
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(FluentIcons.database_search_20_regular,
                        size: 48),
                    const SizedBox(height: 16),
                    Text(
                        "Enter a SQL query and execute it to see results".i18n),
                  ],
                ),
              ),
            )
          else
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(FluentIcons.database_20_regular, size: 48),
                    const SizedBox(height: 16),
                    Text("Load a database first".i18n),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
