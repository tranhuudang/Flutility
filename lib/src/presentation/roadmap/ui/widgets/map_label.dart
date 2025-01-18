import 'package:flutter/material.dart';
import 'package:flutter_toolkits/src/core/core.dart';

class MapLabel extends StatelessWidget {
  final String label;
  const MapLabel({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          decoration: BoxDecoration(
              color: context.theme.colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: context.theme.textTheme.titleMedium?.copyWith(
                    color: context.theme.colorScheme.onSecondaryContainer),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
