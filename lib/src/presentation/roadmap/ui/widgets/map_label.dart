import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class MapLabel extends StatelessWidget {
  final String label;
  const MapLabel({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
                color: context.theme.colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(FluentIcons.flag_checkered_20_regular,),
                8.width,
                Text(
                  label,
                  style: context.theme.textTheme.titleMedium?.copyWith(
                      color: context.theme.colorScheme.onSecondaryContainer),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
