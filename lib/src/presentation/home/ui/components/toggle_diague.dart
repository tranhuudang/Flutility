import 'package:flutter/material.dart';
import 'package:flutter_toolkits/src/core/core.dart';

class ToggleToolsDialog extends StatefulWidget {
  const ToggleToolsDialog({super.key});

  @override
  _ToggleToolsDialogState createState() => _ToggleToolsDialogState();
}

class _ToggleToolsDialogState extends State<ToggleToolsDialog> {
  // State variables to track the toggle state of each tool
  late bool isJsonFormatterEnabled;
  late bool isImageCompressorEnabled;
  late bool isApiTestingEnabled;

  @override
  void initState() {
    super.initState();
    isJsonFormatterEnabled = Properties.instance.settings.enableJsonFormatter;
    isImageCompressorEnabled = Properties.instance.settings.enableImageCompress;
    isApiTestingEnabled = Properties.instance.settings.enableApiTesting;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enable Additional Tools'.i18n),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SwitchListTile(
            title: Text('JSON Formatter'.i18n),
            subtitle:
                Text('Format your JSON data for better readability.'.i18n),
            value: isJsonFormatterEnabled,
            onChanged: (value) {
              setState(() {
                isJsonFormatterEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Image Compressor'.i18n),
            subtitle:
                Text('Reduce image file sizes without quality loss.'.i18n),
            value: isImageCompressorEnabled,
            onChanged: (value) {
              setState(() {
                isImageCompressorEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('API Testing'.i18n),
            subtitle: Text('Test and debug your API endpoints.'.i18n),
            value: isApiTestingEnabled,
            onChanged: (value) {
              setState(() {
                isApiTestingEnabled = value;
              });
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'.i18n),
        ),
        ElevatedButton(
          onPressed: () {
            // Save changes and close the dialog
            Properties.instance.saveSettings(Properties.instance.settings
                .copyWith(
                    enableApiTesting: isApiTestingEnabled,
                    enableImageCompress: isImageCompressorEnabled,
                    enableJsonFormatter: isJsonFormatterEnabled));
            // You can perform any required actions here, like saving the state to shared preferences
            Navigator.of(context).pop({
              'jsonFormatter': isJsonFormatterEnabled,
              'imageCompressor': isImageCompressorEnabled,
              'apiTesting': isApiTestingEnabled,
            });
          },
          child: Text('Save'.i18n),
        ),
      ],
    );
  }
}


