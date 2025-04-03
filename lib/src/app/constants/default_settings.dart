import 'package:flutter/material.dart';
import '../../domain/domain.dart';

class DefaultSettings {
  static const String appName = 'Flutility';
  static const String appDescription = 'Essential Tools for Flutter Developers.';
  static const Size defaultWindowsSize = Size(850, 620);
  static const Size minWindowsSize = Size(850, 620);
  static const Size maxWindowsSize = Size(5000, 10000);
  static const double overflowHeight = 745;
  static final Settings settings = Settings(
    language: 'System default',
    windowsWidth: defaultWindowsSize.width,
    windowsHeight: defaultWindowsSize.height,
    themeMode: 'ThemeMode.system',
    openAppCount: 0,
    didRateApp: false,
    themeColor: Colors.blue.value,
    enableAdaptiveTheme: true,
    selectedTab: 0,
    continueWithoutLogin: false,
    enableApiTesting: true,
    enableImageCompress: true,
    enableJsonFormatter: true,
    enableDatabaseExplorer: true,
    randomNumberForWebLogin: 0,
    colorCollection: '[{"color": 4278190080, "label": "Default Black"}]',
    isGenerateForAndroid: true,
    isGenerateForIOs: true,
    isGenerateForMacOs: true,
    isGenerateForWindows: true,
    isGenerateForWeb: true,
    currentGenerateIconForProjectPath: '',

  );
}
