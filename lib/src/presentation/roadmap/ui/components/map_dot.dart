import 'package:flutter/material.dart';
import 'package:flutter_toolkits/src/core/core.dart';

class MapDot extends StatelessWidget {
  final bool? branchLeft;
  final bool? branchRight;
  const MapDot({
    super.key,
    this.branchLeft,
    this.branchRight,
  });

  @override
  Widget build(BuildContext context) {
    const width = 250.0;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (branchLeft ?? false) ...[
              Container(
                color: context.theme.colorScheme.primary,
                height: 3,
                width: width,
              ),
              Container(
                color: Colors.transparent,
                height: 3,
                width: width,
              ),
            ],
            if (branchRight ?? false) ...[
              Container(
                color: Colors.transparent,
                height: 3,
                width: width,
              ),
              Container(
                color: context.theme.colorScheme.primary,
                height: 3,
                width: width,
              ),
            ],
          ],
        ),
        Center(
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2),
              color: context.theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
