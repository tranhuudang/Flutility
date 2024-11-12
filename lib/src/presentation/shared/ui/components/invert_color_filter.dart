import 'package:flutter/material.dart';

class InvertColorFilter extends StatelessWidget {
  final Widget child;
  const InvertColorFilter({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return ColorFiltered(
        colorFilter: ColorFilter.matrix(isDarkMode
            ? [
                -1,
                0,
                0,
                0,
                255,
                0,
                -1,
                0,
                0,
                255,
                0,
                0,
                -1,
                0,
                255,
                0,
                0,
                0,
                1,
                0,
              ]
            : [
                1,
                0,
                0,
                0,
                0,
                0,
                1,
                0,
                0,
                0,
                0,
                0,
                1,
                0,
                0,
                0,
                0,
                0,
                1,
                0,
              ]),
        child: child);
  }
}
