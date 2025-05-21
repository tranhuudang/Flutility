import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutility/src/app/app.dart';

// Custom class to handle binary blob data
class Blob {
  final List<int> data;

  Blob(this.data);

  @override
  String toString() {
    return '<BLOB: ${data.length} bytes>';
  }
}

class DatabaseContentViewer extends StatefulWidget {
  final List<Map<String, dynamic>> data;

  const DatabaseContentViewer({
    super.key,
    required this.data,
  });

  @override
  State<DatabaseContentViewer> createState() => _DatabaseContentViewerState();
}

class _DatabaseContentViewerState extends State<DatabaseContentViewer> {
  late List<String> columns;
  late ScrollController _horizontalScrollController;
  late ScrollController _verticalScrollController;

  @override
  void initState() {
    super.initState();
    _horizontalScrollController = ScrollController();
    _verticalScrollController = ScrollController();
    _initColumns();
  }

  @override
  void didUpdateWidget(DatabaseContentViewer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.data != oldWidget.data) {
      _initColumns();
    }
  }

  @override
  void dispose() {
    _horizontalScrollController.dispose();
    _verticalScrollController.dispose();
    super.dispose();
  }

  void _initColumns() {
    // Extract all unique column names from all rows
    final Set<String> uniqueColumns = {};

    for (var row in widget.data) {
      uniqueColumns.addAll(row.keys);
    }

    columns = uniqueColumns.toList();

    // Reorder columns to prioritize common key columns
    final keyColumns = ['id', '_id', 'key', '_key', 'name', 'title'];
    columns.sort((a, b) {
      final aIsKey = keyColumns.contains(a.toLowerCase());
      final bIsKey = keyColumns.contains(b.toLowerCase());

      if (aIsKey && !bIsKey) return -1;
      if (!aIsKey && bIsKey) return 1;
      return a.compareTo(b);
    });
  }

  String _formatValue(dynamic value) {
    if (value == null) return 'null';
    if (value is Blob) return '<BLOB>';
    return value.toString();
  }

  void _copyRowToClipboard(int rowIndex) {
    final row = widget.data[rowIndex];
    final StringBuffer buffer = StringBuffer();

    for (var column in columns) {
      if (row.containsKey(column)) {
        buffer.write('$column: ${_formatValue(row[column])}\n');
      }
    }

    Clipboard.setData(ClipboardData(text: buffer.toString()));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Row data copied to clipboard'.i18n)),
    );
  }

  void _copyAllToClipboard() {
    final StringBuffer buffer = StringBuffer();

    // Add headers
    buffer.write(columns.join('\t'));
    buffer.write('\n');

    // Add rows
    for (var row in widget.data) {
      for (var column in columns) {
        if (row.containsKey(column)) {
          buffer.write(_formatValue(row[column]));
        }
        buffer.write('\t');
      }
      buffer.write('\n');
    }

    Clipboard.setData(ClipboardData(text: buffer.toString()));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('All data copied to clipboard'.i18n)),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data.isEmpty) {
      return Center(child: Text('No data available'.i18n));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('${widget.data.length} rows'.i18n,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            TextButton.icon(
              onPressed: _copyAllToClipboard,
              icon: const Icon(Icons.copy_all),
              label: Text('Copy All'.i18n),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Expanded(
          child: Scrollbar(
            controller: _verticalScrollController,
            thumbVisibility: true,
            thickness: 8,
            child: Scrollbar(
              controller: _horizontalScrollController,
              thumbVisibility: true,
              thickness: 8,
              notificationPredicate: (notification) => notification.depth == 1,
              scrollbarOrientation: ScrollbarOrientation.bottom,
              child: SingleChildScrollView(
                controller: _verticalScrollController,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _horizontalScrollController,
                  child: DataTable(
                    columns: [
                      const DataColumn(label: Text('#')),
                      ...columns.map((column) => DataColumn(
                            label: Tooltip(
                              message: column,
                              child: Text(
                                column,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                      const DataColumn(label: Text('Actions')),
                    ],
                    rows: List.generate(
                      widget.data.length,
                      (rowIndex) => _buildDataRow(rowIndex),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  DataRow _buildDataRow(int rowIndex) {
    final row = widget.data[rowIndex];

    return DataRow(
      cells: [
        DataCell(Text('${rowIndex + 1}')),
        ...columns.map((column) => DataCell(
              row.containsKey(column)
                  ? _buildCellContent(row[column])
                  : const Text(''),
            )),
        DataCell(IconButton(
          icon: const Icon(Icons.copy, size: 18),
          onPressed: () => _copyRowToClipboard(rowIndex),
          tooltip: 'Copy row'.i18n,
        )),
      ],
    );
  }

  Widget _buildCellContent(dynamic value) {
    if (value == null) {
      return const Text('null',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey));
    }

    // Format based on data type
    if (value is int || value is double) {
      return Text(value.toString(), style: const TextStyle(color: Colors.blue));
    } else if (value is bool) {
      return Text(
        value.toString(),
        style: TextStyle(
          color: value ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (value is Blob) {
      return const Text('<BLOB>', style: TextStyle(color: Colors.purple));
    } else if (value.toString().startsWith('{') &&
        value.toString().endsWith('}')) {
      return const Text('<JSON>', style: TextStyle(color: Colors.orange));
    } else {
      // Text value with tooltip for longer text
      final text = value.toString();
      return Tooltip(
        message: text.length > 50 ? text : '',
        child: Text(
          text.length > 50 ? '${text.substring(0, 47)}...' : text,
        ),
      );
    }
  }
}
