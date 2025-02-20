

import 'package:fluttertoys/src/presentation/presentation.dart';
import 'package:flutter/services.dart';

import '../core.dart';

const lightThemeBackgroundColor = Color(0xfffffef5);

ThemeData lightTheme({required ColorScheme colorScheme}) {
  return ThemeData(
    scaffoldBackgroundColor: isWindows ? colorScheme.surface : lightThemeBackgroundColor,
    cardTheme: CardTheme(
      color: colorScheme.surfaceContainerLow,
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),
    appBarTheme: AppBarTheme(
      titleSpacing: 0,
      //iconTheme: IconThemeData(color: colorScheme.primary),
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colorScheme.onSurface),
      centerTitle: false,
      backgroundColor: isWindows ? colorScheme.surface : lightThemeBackgroundColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      scrolledUnderElevation: 0,
    ),
    useMaterial3: true,
    colorScheme: colorScheme,
  );
}
