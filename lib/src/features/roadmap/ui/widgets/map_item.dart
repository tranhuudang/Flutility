import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:flutter/material.dart';

class MapItem extends StatelessWidget {
  final String? label;
  final VoidCallback? onTap;
  final Widget? icon;
  final double? width;
  final int importantLevel;
  const MapItem({
    super.key,
    this.label,
    this.onTap,
    this.icon,
    this.width,
    this.importantLevel = 0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        height: 50,
        padding: const EdgeInsets.only(left: 8, right: 8),
        decoration: BoxDecoration(
          color: importantLevel == 0
              ? context.theme.colorScheme.secondary
              : importantLevel == 1
              ? context.theme.colorScheme.secondaryContainer
              : context.theme.colorScheme.tertiaryContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        width: width ?? 120,
        child: Row(
          children: [
            if (icon != null) ...[
              icon!,
              8.width,
            ],
            if (label != null)
              Expanded(
                  child: Text(
                label!,
                style: TextStyle(
                  color: importantLevel == 0
                      ? context.theme.colorScheme.onSecondary
                      : importantLevel == 1
                          ? context.theme.colorScheme.onSecondaryContainer
                          : context.theme.colorScheme.onTertiaryContainer,
                ),
              ))
          ],
        ),
      ),
    );
  }
}
