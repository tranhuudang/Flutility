import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class ChevronBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const ChevronBackButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          if (onPressed != null) {
            onPressed!.call();
          } else {
            Navigator.maybePop(context);
          }
        },
        icon: const Icon(FluentIcons.chevron_left_12_regular));
  }
}
