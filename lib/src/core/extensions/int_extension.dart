import 'package:flutter_toolkits/src/presentation/presentation.dart';

extension IntExtension on int{
  SizedBox get width => SizedBox(width: toDouble(),);
  SizedBox get height => SizedBox(height: toDouble(),);
}