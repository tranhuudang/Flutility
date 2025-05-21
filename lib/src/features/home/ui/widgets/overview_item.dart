import 'package:flutter/material.dart';
import 'package:marina_labs_common/marina_labs_common.dart';

class OverviewItem extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const OverviewItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Container(
          height: 90,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(
                  color: context.theme.dividerColor.withValues(alpha: .5)),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              8.width,
              if (icon != null)
                Icon(
                  icon,
                  size: 30,
                ),
              16.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      style: context.theme.textTheme.bodyMedium,
                    ),
                    Opacity(
                        opacity: .5,
                        child: Text(
                          subtitle,
                          style: context.theme.textTheme.bodySmall,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
