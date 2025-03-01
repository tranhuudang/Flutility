import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutility/src/app/app.dart';

class ColorPickerScreen extends StatefulWidget {
  const ColorPickerScreen({super.key});

  @override
  State<ColorPickerScreen> createState() => _ColorPickerScreenState();
}

class _ColorPickerScreenState extends State<ColorPickerScreen> {
  late Color screenPickerColor;
  List<ColorCollectionItem> colorCollection = [];

  @override
  void initState() {
    super.initState();
    screenPickerColor = Colors.blue;
    _loadColorCollection();
  }

  // Load color collection from SharedPreferences
  Future<void> _loadColorCollection() async {
    final String colorsJson = Properties.instance.settings.colorCollection;
    final List<dynamic> colorList = jsonDecode(colorsJson);
    setState(() {
      colorCollection = colorList
          .map((colorData) => ColorCollectionItem.fromJson(colorData))
          .toList();
    });
  }

  // Save color collection to SharedPreferences
  Future<void> _saveColorCollection() async {
    final String colorsJson = jsonEncode(
      colorCollection.map((colorItem) => colorItem.toJson()).toList(),
    );
    Properties.instance.saveSettings(
        Properties.instance.settings.copyWith(colorCollection: colorsJson));
  }

  // Function to add a color and save
  void _addColorToCollection() {
    setState(() {
      colorCollection.add(ColorCollectionItem(color: screenPickerColor));
      _saveColorCollection(); // Save immediately after adding
    });
  }

  void removeColorFromCollection(ColorCollectionItem item) {
    setState(() {
      colorCollection.remove(item);
      _saveColorCollection(); // Save the updated collection to SharedPreferences
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.color_16_regular),
        title: Text('Color Picker'.i18n),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(6),
            child: ColorPicker(
              // Use the screenPickerColor as color.
              color: screenPickerColor,
              // Update the screenPickerColor using the callback.
              onColorChanged: (Color color) {
                setState(() => screenPickerColor = color);
              },
              width: 40,
              height: 40,
              spacing: 0,
              runSpacing: 0,
              borderRadius: 0,
              wheelDiameter: 198,
              wheelWidth: 24,
              enableOpacity: true,
              showColorCode: true,
              colorCodeHasColor: true,
              pickersEnabled: const <ColorPickerType, bool>{
                ColorPickerType.wheel: true,
                ColorPickerType.bw: true,
              },
            ),
          ),
          Center(
              child: TextButton.icon(
            onPressed: () {
              // setState(() {
              //   colorCollection
              //       .add(ColorCollectionItem(color: screenPickerColor));
              // });
              _addColorToCollection();
            },
            label: Text('Add this color to Collection'.i18n),
            icon: const Icon(Icons.bookmark),
          )),
          8.height,
          if (colorCollection.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                'Color Collection'.i18n,
                style: context.theme.textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Text(
                "Don't forget to press Enter after changing the name of the color to save the changes.".i18n,
                style: context.theme.textTheme.labelSmall?.copyWith(color: context.theme.colorScheme.error),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: DottedBorder(
                dashPattern: const [4, 4],
                borderType: BorderType.RRect,
                strokeWidth: .5,
                radius: const Radius.circular(5),
                color: context.theme.dividerColor,
                child: Center(
                  child: GridView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    // runSpacing: 0,
                    // spacing: 0,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 40),
                    children: colorCollection
                        .map((item) => Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: item.color,
                                      border: Border.all(width: 0.5),
                                    ),
                                    height: 40,
                                    width: 40,
                                  ),
                                  const SizedBox(width: 8),
                                  // Editable TextField for the label
                                  Flexible(
                                    child: TextField(
                                      controller: TextEditingController(
                                          text: item.label),
                                      onSubmitted: (value) async {
                                        setState(() {
                                          item.label = value;
                                        });
                                        await _saveColorCollection();
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Label'.i18n,
                                        isDense: true,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  IconButton(
                                    icon: const Icon(Icons.copy_rounded),
                                    iconSize: 20,
                                    onPressed: () {
                                      Clipboard.setData(ClipboardData(
                                          text: item.color.toString()));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                'Copied to clipboard'.i18n)),
                                      );
                                    },
                                  ),
                                  // Delete button
                                  IconButton(
                                    icon: const Icon(Icons.close),
                                    iconSize: 20,
                                    onPressed: () {
                                      removeColorFromCollection(item);
                                    },
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class ColorCollectionItem {
  Color color;
  String label;

  ColorCollectionItem({required this.color, this.label = ''});

  // Convert color and label to a JSON format
  Map<String, dynamic> toJson() => {
        'color': color.value, // Save color as integer
        'label': label,
      };

  // Create a ColorCollectionItem from JSON data
  factory ColorCollectionItem.fromJson(Map<String, dynamic> json) {
    return ColorCollectionItem(
      color: Color(json['color']),
      label: json['label'] ?? '',
    );
  }
}
