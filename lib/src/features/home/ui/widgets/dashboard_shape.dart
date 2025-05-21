import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class DashboardShape extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  const DashboardShape({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 68,
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 8),
            ),
            Text(
              '#${textColor.toHexString()}',
              style: TextStyle(color: textColor, fontSize: 8),
            ),
          ],
        ),
      ),
    );
  }
}
