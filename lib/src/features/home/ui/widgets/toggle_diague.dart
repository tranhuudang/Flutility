import 'package:flutter/material.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutility/generated/l10n.dart';

class ToggleToolsDialog extends StatefulWidget {
  const ToggleToolsDialog({super.key});

  @override
  State<ToggleToolsDialog> createState() => _ToggleToolsDialogState();
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
      title: Text(S.of(context).enableAdditionalTools),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SwitchListTile(
            title: Text(S.of(context).jsonFormatter),
            subtitle:
                Text(S.of(context).formatYourJsonDataForBetterReadability),
            value: isJsonFormatterEnabled,
            onChanged: (value) {
              setState(() {
                isJsonFormatterEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: Text(S.of(context).imageCompressor),
            subtitle:
                Text(S.of(context).reduceImageFileSizesWithoutQualityLoss),
            value: isImageCompressorEnabled,
            onChanged: (value) {
              setState(() {
                isImageCompressorEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: Text(S.of(context).apiTesting),
            subtitle: Text(S.of(context).testAndDebugYourApiEndpoints),
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
          child: Text(S.of(context).cancel),
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
          child: Text(S.of(context).save),
        ),
      ],
    );
  }
}


