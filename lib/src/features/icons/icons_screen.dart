import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutility/src/features/icons/parts/fluent_icons_screen.dart';

import 'package:flutility/src/features/icons/parts/material_icons_screen.dart';

class IconsScreen extends StatefulWidget {
  const IconsScreen({super.key});

  @override
  State<IconsScreen> createState() => _IconsScreenState();
}

class _IconsScreenState extends State<IconsScreen> {
  String selectedPlatform = 'Fluent Icons'; // Default platform selection
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.icons_20_regular),
        title: const Text('Icons'),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: context.theme.colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                borderRadius: BorderRadius.circular(10),
                value: selectedPlatform,
                items: ['Material Icons', 'Fluent Icons'].map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item),
                    ),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    selectedPlatform = value!;
                  });
                },
              ),
            ),
          ),
          16.width
        ],
      ),
      body: selectedPlatform == 'Material Icons'
          ? const MaterialIconsScreen()
          : const FluentIconsScreen(),
    );
  }
}
