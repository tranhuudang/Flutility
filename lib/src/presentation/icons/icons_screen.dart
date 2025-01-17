import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolkits/src/presentation/icons/fluent_icons_screen.dart';

import 'package:flutter_toolkits/src/presentation/icons/material_icons_screen.dart';

class IconsScreen extends StatefulWidget {
  const IconsScreen({super.key});

  @override
  State<IconsScreen> createState() => _IconsScreenState();
}

class _IconsScreenState extends State<IconsScreen> {
  String selectedPlatform = 'Material Icons'; // Default platform selection
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.icons_20_regular),
        title: const Text('Icons'),
        actions: [
          DropdownButton<String>(
            value: selectedPlatform,
            items: ['Material Icons', 'Fluent Icons'].map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                selectedPlatform = value!;
              });
            },
          ),
        ],
      ),
      body: selectedPlatform == 'Material Icons'
          ? const MaterialIconsScreen()
          : const FluentIconsScreen(),
    );
  }
}

