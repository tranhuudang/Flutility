import 'package:flutter/material.dart';
import 'package:flutility/src/core/core.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  const DividerWithText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
      const Expanded(child: Divider()),
      8.width,
      Text(text),
      8.width,
      const Expanded(child: Divider()),
    ]);
  }
}
