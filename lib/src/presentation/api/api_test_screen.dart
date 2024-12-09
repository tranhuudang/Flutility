import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:http/http.dart' as http;
import '../../core/utils/json_formatter.dart';

class ApiTestScreen extends StatefulWidget {
  const ApiTestScreen({super.key});

  @override
  State<ApiTestScreen> createState() => _ApiTestScreenState();
}

class _ApiTestScreenState extends State<ApiTestScreen> {
  final TextEditingController _getController = TextEditingController();
  final TextEditingController _postController = TextEditingController();
  final TextEditingController _deleteController = TextEditingController();
  int _statusCode = 0;
  Uint8List _bodyBytes = Uint8List(0);
  String _response = "";



  // GET Request
  Future<void> _performGet() async {
    final url = Uri.parse(_getController.text);
    try {
      final response = await http.get(url);
      setState(() {
        _response = JsonHandler.formatJson(response.body);
        _statusCode = response.statusCode;
        _bodyBytes = response.bodyBytes;
      });
    } catch (error) {
      setState(() {
        _response = 'Failed GET request: $error';
      });
    }
  }

  // POST Request
  Future<void> _performPost() async {
    final url = Uri.parse(_postController.text);
    try {
      final response = await http.post(url,
          body: {'key': 'value'}); // You can modify the body for POST
      setState(() {
        _response = JsonHandler.formatJson(response.body);
        _statusCode = response.statusCode;
        _bodyBytes = response.bodyBytes;
      });
    } catch (error) {
      setState(() {
        _response = 'Failed POST request: $error';
      });
    }
  }

  // DELETE Request
  Future<void> _performDelete() async {
    final url = Uri.parse(_deleteController.text);
    try {
      final response = await http.delete(url);
      setState(() {
        _response = JsonHandler.formatJson(response.body);
        _statusCode = response.statusCode;
        _bodyBytes = response.bodyBytes;
      });
    } catch (error) {
      setState(() {
        _response = 'Failed DELETE request: $error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.network_check_20_regular),
        title: Text("API Testing Tool".i18n),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "This API Testing Tool allows you to perform basic HTTP requests like GET, POST, and DELETE. Enter a URL to test the response and see the status code and data returned by the server."
                    .i18n,
              ),
              16.height,
              // GET Request Section
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _getController,
                      decoration: const InputDecoration(
                        labelText: "GET URL",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  8.width,
                  ConstrainBox(
                    child: ElevatedButton(
                      onPressed: _performGet,
                      child: const Text("GET"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // POST Request Section
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _postController,
                      decoration: const InputDecoration(
                        labelText: "POST URL",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  8.width,
                  ConstrainBox(
                    child: ElevatedButton(
                      onPressed: _performPost,
                      child: const Text("POST"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // DELETE Request Section
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _deleteController,
                      decoration: const InputDecoration(
                        labelText: "DELETE URL",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  8.width,
                  ConstrainBox(
                    child: ElevatedButton(
                      onPressed: _performDelete,
                      child: const Text("DELETE"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Response RichText Section
              Row(
                children: [
                  Text(
                    "Response".i18n,
                    style: context.theme.textTheme.titleSmall,
                  ),
                  const Spacer(),
                  Text(
                    "${'Status'.i18n}: ",
                    style: context.theme.textTheme.titleSmall,
                  ),
                  Text(
                    "$_statusCode ${_statusCode % 200 == 0 ? 'OK' : ''}",
                    style: context.theme.textTheme.titleSmall?.copyWith(
                        color: _statusCode % 200 == 0
                            ? Colors.green
                            : context.theme.colorScheme.onSurface),
                  ),
                  16.width,
                  Text(
                    "${_bodyBytes.length} bytes",
                    style: context.theme.textTheme.titleSmall,
                  ),
                ],
              ),
              8.height,
              Container(
                width: double.infinity,
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
                                ClipboardData(text: _response),
                              );
                              context.showSnackBar(
                                  content: 'Copied to clipboard'.i18n);
                            },
                            icon: const Icon(Icons.copy_rounded))
                      ],
                    ),
                    SelectableText(
                      _response,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConstrainBox extends StatelessWidget {
  final Widget child;
  const ConstrainBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: child,
    );
  }
}
