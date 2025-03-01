import 'package:dak_solutions_common/dak_solutions_common.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutility/src/app/utils/json_formatter.dart'; // For JSON formatting

class JsonFormatterScreen extends StatefulWidget {
  const JsonFormatterScreen({super.key});

  @override
  State<JsonFormatterScreen> createState() => _JsonFormatterScreenState();
}

class _JsonFormatterScreenState extends State<JsonFormatterScreen> {
  final TextEditingController _jsonController = TextEditingController();
  String _formattedJson = "";

  // Function to prettify the JSON
  void _formatJson() {
    setState(() {
      _formattedJson = JsonHandler.formatJson(_jsonController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.data_pie_20_regular),
        title: Text("JSON Formatter".i18n),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Guiding Text at the top
            Row(
              children: [
                Icon(Icons.info_outline,
                    color: context.theme.colorScheme.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Enter your JSON below and click 'Format JSON' to prettify it. Make sure it's valid JSON format."
                        .i18n,
                    style: TextStyle(color: context.theme.colorScheme.primary),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Input TextField for raw JSON
            TextField(
              controller: _jsonController,
              maxLines: 6,
              decoration: InputDecoration(
                labelText: "Enter JSON".i18n,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Button to trigger JSON formatting
            Center(
              child: ElevatedButton(
                onPressed: _formatJson,
                child: Text("Format JSON".i18n),
              ),
            ),

            const SizedBox(height: 20),

            // SelectableText to show formatted JSON
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          TextButton.icon(
                            label: Text('Copy'.i18n),
                            onPressed: () {
                              Clipboard.setData(
                                ClipboardData(text: _formattedJson),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Copied to clipboard'.i18n),
                                ),
                              );
                            },
                            icon: const Icon(Icons.copy_rounded),
                          ),
                        ],
                      ),
                      SelectableText(
                        _formattedJson.isEmpty
                            ? "Formatted JSON will appear here".i18n
                            : _formattedJson,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
