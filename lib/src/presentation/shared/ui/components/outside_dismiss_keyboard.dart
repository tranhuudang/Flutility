import 'package:flutter/material.dart';

class OutsideDismissKeyboard extends StatelessWidget {
  final Widget child;
  const OutsideDismissKeyboard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: child,
    );
  }
}
