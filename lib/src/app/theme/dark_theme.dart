import 'package:flutility/src/presentation/presentation.dart';
import 'package:flutter/services.dart';

import '../app.dart';

ThemeData darkTheme({required ColorScheme colorScheme}) {
  return ThemeData(
    bottomAppBarTheme: BottomAppBarTheme(
      color: isWindows ? const Color(0xFF292726) : Colors.black,
    ),
    scaffoldBackgroundColor: isWindows ? const Color(0xFF292726) : Colors.black,
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: isWindows ? const Color(0xFF292726) : Colors.black,
    ),
    cardTheme: CardTheme(
      color: isWindows ? const Color(0xFF343230) : colorScheme.surfaceContainer,
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),
    appBarTheme: AppBarTheme(
      titleSpacing: 0,
      //iconTheme: IconThemeData(color: colorScheme.primary),
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,  color: colorScheme.onSurface,
      ),
      centerTitle: false,
      backgroundColor: isWindows ? const Color(0xFF292726) : Colors.black,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      scrolledUnderElevation: 0,
    ),
    useMaterial3: true,
    colorScheme: colorScheme,
  );
}
