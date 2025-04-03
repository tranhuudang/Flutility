// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Settings {
  /// Save current theme of this app in this param, it holds string value of [ThemeMode] with value:
  /// ThemeMode.system, ThemeMode.dark, ThemeMode.light
  String get themeMode;

  /// Adaptive theme use DynamicTheme package to generate colorScheme
  bool get enableAdaptiveTheme;

  /// Open app count will trigger a specific function when user use app for a period of time
  int get openAppCount;
  bool get didRateApp;

  /// Language of app, those value : English, Tiếng Việt, System default will be convert
  /// to [Locale('en', 'US')] to change value of the app
  String get language;

  /// Hold windows size value
  double get windowsWidth;

  /// Hold windows size value
  double get windowsHeight;

  /// Hold primary color for the app, it can be generate to other colors later to
  /// create colorScheme
  int get themeColor;

  /// Save selected tab path for desktop device
  int get selectedTab;

  /// Collection of saved color
  String get colorCollection;

  /// Working in login screen, it true when user decide to using the app without login
  bool get continueWithoutLogin;

  /// A random number for web login
  int get randomNumberForWebLogin;
  bool get enableApiTesting;
  bool get enableImageCompress;
  bool get enableJsonFormatter;
  bool get enableDatabaseExplorer;

  /// Icon Generator
  bool get isGenerateForAndroid;
  bool get isGenerateForIOs;
  bool get isGenerateForMacOs;
  bool get isGenerateForWindows;
  bool get isGenerateForWeb;
  String get currentGenerateIconForProjectPath;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<Settings> get copyWith =>
      _$SettingsCopyWithImpl<Settings>(this as Settings, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Settings &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.enableAdaptiveTheme, enableAdaptiveTheme) ||
                other.enableAdaptiveTheme == enableAdaptiveTheme) &&
            (identical(other.openAppCount, openAppCount) ||
                other.openAppCount == openAppCount) &&
            (identical(other.didRateApp, didRateApp) ||
                other.didRateApp == didRateApp) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.windowsWidth, windowsWidth) ||
                other.windowsWidth == windowsWidth) &&
            (identical(other.windowsHeight, windowsHeight) ||
                other.windowsHeight == windowsHeight) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.colorCollection, colorCollection) ||
                other.colorCollection == colorCollection) &&
            (identical(other.continueWithoutLogin, continueWithoutLogin) ||
                other.continueWithoutLogin == continueWithoutLogin) &&
            (identical(
                    other.randomNumberForWebLogin, randomNumberForWebLogin) ||
                other.randomNumberForWebLogin == randomNumberForWebLogin) &&
            (identical(other.enableApiTesting, enableApiTesting) ||
                other.enableApiTesting == enableApiTesting) &&
            (identical(other.enableImageCompress, enableImageCompress) ||
                other.enableImageCompress == enableImageCompress) &&
            (identical(other.enableJsonFormatter, enableJsonFormatter) ||
                other.enableJsonFormatter == enableJsonFormatter) &&
            (identical(other.enableDatabaseExplorer, enableDatabaseExplorer) ||
                other.enableDatabaseExplorer == enableDatabaseExplorer) &&
            (identical(other.isGenerateForAndroid, isGenerateForAndroid) ||
                other.isGenerateForAndroid == isGenerateForAndroid) &&
            (identical(other.isGenerateForIOs, isGenerateForIOs) ||
                other.isGenerateForIOs == isGenerateForIOs) &&
            (identical(other.isGenerateForMacOs, isGenerateForMacOs) ||
                other.isGenerateForMacOs == isGenerateForMacOs) &&
            (identical(other.isGenerateForWindows, isGenerateForWindows) ||
                other.isGenerateForWindows == isGenerateForWindows) &&
            (identical(other.isGenerateForWeb, isGenerateForWeb) ||
                other.isGenerateForWeb == isGenerateForWeb) &&
            (identical(other.currentGenerateIconForProjectPath,
                    currentGenerateIconForProjectPath) ||
                other.currentGenerateIconForProjectPath ==
                    currentGenerateIconForProjectPath));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        themeMode,
        enableAdaptiveTheme,
        openAppCount,
        didRateApp,
        language,
        windowsWidth,
        windowsHeight,
        themeColor,
        selectedTab,
        colorCollection,
        continueWithoutLogin,
        randomNumberForWebLogin,
        enableApiTesting,
        enableImageCompress,
        enableJsonFormatter,
        enableDatabaseExplorer,
        isGenerateForAndroid,
        isGenerateForIOs,
        isGenerateForMacOs,
        isGenerateForWindows,
        isGenerateForWeb,
        currentGenerateIconForProjectPath
      ]);

  @override
  String toString() {
    return 'Settings(themeMode: $themeMode, enableAdaptiveTheme: $enableAdaptiveTheme, openAppCount: $openAppCount, didRateApp: $didRateApp, language: $language, windowsWidth: $windowsWidth, windowsHeight: $windowsHeight, themeColor: $themeColor, selectedTab: $selectedTab, colorCollection: $colorCollection, continueWithoutLogin: $continueWithoutLogin, randomNumberForWebLogin: $randomNumberForWebLogin, enableApiTesting: $enableApiTesting, enableImageCompress: $enableImageCompress, enableJsonFormatter: $enableJsonFormatter, enableDatabaseExplorer: $enableDatabaseExplorer, isGenerateForAndroid: $isGenerateForAndroid, isGenerateForIOs: $isGenerateForIOs, isGenerateForMacOs: $isGenerateForMacOs, isGenerateForWindows: $isGenerateForWindows, isGenerateForWeb: $isGenerateForWeb, currentGenerateIconForProjectPath: $currentGenerateIconForProjectPath)';
  }
}

/// @nodoc
abstract mixin class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) _then) =
      _$SettingsCopyWithImpl;
  @useResult
  $Res call(
      {String themeMode,
      bool enableAdaptiveTheme,
      int openAppCount,
      bool didRateApp,
      String language,
      double windowsWidth,
      double windowsHeight,
      int themeColor,
      int selectedTab,
      String colorCollection,
      bool continueWithoutLogin,
      int randomNumberForWebLogin,
      bool enableApiTesting,
      bool enableImageCompress,
      bool enableJsonFormatter,
      bool enableDatabaseExplorer,
      bool isGenerateForAndroid,
      bool isGenerateForIOs,
      bool isGenerateForMacOs,
      bool isGenerateForWindows,
      bool isGenerateForWeb,
      String currentGenerateIconForProjectPath});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._self, this._then);

  final Settings _self;
  final $Res Function(Settings) _then;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? enableAdaptiveTheme = null,
    Object? openAppCount = null,
    Object? didRateApp = null,
    Object? language = null,
    Object? windowsWidth = null,
    Object? windowsHeight = null,
    Object? themeColor = null,
    Object? selectedTab = null,
    Object? colorCollection = null,
    Object? continueWithoutLogin = null,
    Object? randomNumberForWebLogin = null,
    Object? enableApiTesting = null,
    Object? enableImageCompress = null,
    Object? enableJsonFormatter = null,
    Object? enableDatabaseExplorer = null,
    Object? isGenerateForAndroid = null,
    Object? isGenerateForIOs = null,
    Object? isGenerateForMacOs = null,
    Object? isGenerateForWindows = null,
    Object? isGenerateForWeb = null,
    Object? currentGenerateIconForProjectPath = null,
  }) {
    return _then(_self.copyWith(
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
      enableAdaptiveTheme: null == enableAdaptiveTheme
          ? _self.enableAdaptiveTheme
          : enableAdaptiveTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      openAppCount: null == openAppCount
          ? _self.openAppCount
          : openAppCount // ignore: cast_nullable_to_non_nullable
              as int,
      didRateApp: null == didRateApp
          ? _self.didRateApp
          : didRateApp // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      windowsWidth: null == windowsWidth
          ? _self.windowsWidth
          : windowsWidth // ignore: cast_nullable_to_non_nullable
              as double,
      windowsHeight: null == windowsHeight
          ? _self.windowsHeight
          : windowsHeight // ignore: cast_nullable_to_non_nullable
              as double,
      themeColor: null == themeColor
          ? _self.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _self.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      colorCollection: null == colorCollection
          ? _self.colorCollection
          : colorCollection // ignore: cast_nullable_to_non_nullable
              as String,
      continueWithoutLogin: null == continueWithoutLogin
          ? _self.continueWithoutLogin
          : continueWithoutLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      randomNumberForWebLogin: null == randomNumberForWebLogin
          ? _self.randomNumberForWebLogin
          : randomNumberForWebLogin // ignore: cast_nullable_to_non_nullable
              as int,
      enableApiTesting: null == enableApiTesting
          ? _self.enableApiTesting
          : enableApiTesting // ignore: cast_nullable_to_non_nullable
              as bool,
      enableImageCompress: null == enableImageCompress
          ? _self.enableImageCompress
          : enableImageCompress // ignore: cast_nullable_to_non_nullable
              as bool,
      enableJsonFormatter: null == enableJsonFormatter
          ? _self.enableJsonFormatter
          : enableJsonFormatter // ignore: cast_nullable_to_non_nullable
              as bool,
      enableDatabaseExplorer: null == enableDatabaseExplorer
          ? _self.enableDatabaseExplorer
          : enableDatabaseExplorer // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateForAndroid: null == isGenerateForAndroid
          ? _self.isGenerateForAndroid
          : isGenerateForAndroid // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateForIOs: null == isGenerateForIOs
          ? _self.isGenerateForIOs
          : isGenerateForIOs // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateForMacOs: null == isGenerateForMacOs
          ? _self.isGenerateForMacOs
          : isGenerateForMacOs // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateForWindows: null == isGenerateForWindows
          ? _self.isGenerateForWindows
          : isGenerateForWindows // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateForWeb: null == isGenerateForWeb
          ? _self.isGenerateForWeb
          : isGenerateForWeb // ignore: cast_nullable_to_non_nullable
              as bool,
      currentGenerateIconForProjectPath: null ==
              currentGenerateIconForProjectPath
          ? _self.currentGenerateIconForProjectPath
          : currentGenerateIconForProjectPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Setting implements Settings {
  const _Setting(
      {required this.themeMode,
      required this.enableAdaptiveTheme,
      required this.openAppCount,
      required this.didRateApp,
      required this.language,
      required this.windowsWidth,
      required this.windowsHeight,
      required this.themeColor,
      required this.selectedTab,
      required this.colorCollection,
      required this.continueWithoutLogin,
      required this.randomNumberForWebLogin,
      required this.enableApiTesting,
      required this.enableImageCompress,
      required this.enableJsonFormatter,
      required this.enableDatabaseExplorer,
      required this.isGenerateForAndroid,
      required this.isGenerateForIOs,
      required this.isGenerateForMacOs,
      required this.isGenerateForWindows,
      required this.isGenerateForWeb,
      required this.currentGenerateIconForProjectPath});

  /// Save current theme of this app in this param, it holds string value of [ThemeMode] with value:
  /// ThemeMode.system, ThemeMode.dark, ThemeMode.light
  @override
  final String themeMode;

  /// Adaptive theme use DynamicTheme package to generate colorScheme
  @override
  final bool enableAdaptiveTheme;

  /// Open app count will trigger a specific function when user use app for a period of time
  @override
  final int openAppCount;
  @override
  final bool didRateApp;

  /// Language of app, those value : English, Tiếng Việt, System default will be convert
  /// to [Locale('en', 'US')] to change value of the app
  @override
  final String language;

  /// Hold windows size value
  @override
  final double windowsWidth;

  /// Hold windows size value
  @override
  final double windowsHeight;

  /// Hold primary color for the app, it can be generate to other colors later to
  /// create colorScheme
  @override
  final int themeColor;

  /// Save selected tab path for desktop device
  @override
  final int selectedTab;

  /// Collection of saved color
  @override
  final String colorCollection;

  /// Working in login screen, it true when user decide to using the app without login
  @override
  final bool continueWithoutLogin;

  /// A random number for web login
  @override
  final int randomNumberForWebLogin;
  @override
  final bool enableApiTesting;
  @override
  final bool enableImageCompress;
  @override
  final bool enableJsonFormatter;
  @override
  final bool enableDatabaseExplorer;

  /// Icon Generator
  @override
  final bool isGenerateForAndroid;
  @override
  final bool isGenerateForIOs;
  @override
  final bool isGenerateForMacOs;
  @override
  final bool isGenerateForWindows;
  @override
  final bool isGenerateForWeb;
  @override
  final String currentGenerateIconForProjectPath;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SettingCopyWith<_Setting> get copyWith =>
      __$SettingCopyWithImpl<_Setting>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Setting &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.enableAdaptiveTheme, enableAdaptiveTheme) ||
                other.enableAdaptiveTheme == enableAdaptiveTheme) &&
            (identical(other.openAppCount, openAppCount) ||
                other.openAppCount == openAppCount) &&
            (identical(other.didRateApp, didRateApp) ||
                other.didRateApp == didRateApp) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.windowsWidth, windowsWidth) ||
                other.windowsWidth == windowsWidth) &&
            (identical(other.windowsHeight, windowsHeight) ||
                other.windowsHeight == windowsHeight) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.colorCollection, colorCollection) ||
                other.colorCollection == colorCollection) &&
            (identical(other.continueWithoutLogin, continueWithoutLogin) ||
                other.continueWithoutLogin == continueWithoutLogin) &&
            (identical(
                    other.randomNumberForWebLogin, randomNumberForWebLogin) ||
                other.randomNumberForWebLogin == randomNumberForWebLogin) &&
            (identical(other.enableApiTesting, enableApiTesting) ||
                other.enableApiTesting == enableApiTesting) &&
            (identical(other.enableImageCompress, enableImageCompress) ||
                other.enableImageCompress == enableImageCompress) &&
            (identical(other.enableJsonFormatter, enableJsonFormatter) ||
                other.enableJsonFormatter == enableJsonFormatter) &&
            (identical(other.enableDatabaseExplorer, enableDatabaseExplorer) ||
                other.enableDatabaseExplorer == enableDatabaseExplorer) &&
            (identical(other.isGenerateForAndroid, isGenerateForAndroid) ||
                other.isGenerateForAndroid == isGenerateForAndroid) &&
            (identical(other.isGenerateForIOs, isGenerateForIOs) ||
                other.isGenerateForIOs == isGenerateForIOs) &&
            (identical(other.isGenerateForMacOs, isGenerateForMacOs) ||
                other.isGenerateForMacOs == isGenerateForMacOs) &&
            (identical(other.isGenerateForWindows, isGenerateForWindows) ||
                other.isGenerateForWindows == isGenerateForWindows) &&
            (identical(other.isGenerateForWeb, isGenerateForWeb) ||
                other.isGenerateForWeb == isGenerateForWeb) &&
            (identical(other.currentGenerateIconForProjectPath,
                    currentGenerateIconForProjectPath) ||
                other.currentGenerateIconForProjectPath ==
                    currentGenerateIconForProjectPath));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        themeMode,
        enableAdaptiveTheme,
        openAppCount,
        didRateApp,
        language,
        windowsWidth,
        windowsHeight,
        themeColor,
        selectedTab,
        colorCollection,
        continueWithoutLogin,
        randomNumberForWebLogin,
        enableApiTesting,
        enableImageCompress,
        enableJsonFormatter,
        enableDatabaseExplorer,
        isGenerateForAndroid,
        isGenerateForIOs,
        isGenerateForMacOs,
        isGenerateForWindows,
        isGenerateForWeb,
        currentGenerateIconForProjectPath
      ]);

  @override
  String toString() {
    return 'Settings(themeMode: $themeMode, enableAdaptiveTheme: $enableAdaptiveTheme, openAppCount: $openAppCount, didRateApp: $didRateApp, language: $language, windowsWidth: $windowsWidth, windowsHeight: $windowsHeight, themeColor: $themeColor, selectedTab: $selectedTab, colorCollection: $colorCollection, continueWithoutLogin: $continueWithoutLogin, randomNumberForWebLogin: $randomNumberForWebLogin, enableApiTesting: $enableApiTesting, enableImageCompress: $enableImageCompress, enableJsonFormatter: $enableJsonFormatter, enableDatabaseExplorer: $enableDatabaseExplorer, isGenerateForAndroid: $isGenerateForAndroid, isGenerateForIOs: $isGenerateForIOs, isGenerateForMacOs: $isGenerateForMacOs, isGenerateForWindows: $isGenerateForWindows, isGenerateForWeb: $isGenerateForWeb, currentGenerateIconForProjectPath: $currentGenerateIconForProjectPath)';
  }
}

/// @nodoc
abstract mixin class _$SettingCopyWith<$Res>
    implements $SettingsCopyWith<$Res> {
  factory _$SettingCopyWith(_Setting value, $Res Function(_Setting) _then) =
      __$SettingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String themeMode,
      bool enableAdaptiveTheme,
      int openAppCount,
      bool didRateApp,
      String language,
      double windowsWidth,
      double windowsHeight,
      int themeColor,
      int selectedTab,
      String colorCollection,
      bool continueWithoutLogin,
      int randomNumberForWebLogin,
      bool enableApiTesting,
      bool enableImageCompress,
      bool enableJsonFormatter,
      bool enableDatabaseExplorer,
      bool isGenerateForAndroid,
      bool isGenerateForIOs,
      bool isGenerateForMacOs,
      bool isGenerateForWindows,
      bool isGenerateForWeb,
      String currentGenerateIconForProjectPath});
}

/// @nodoc
class __$SettingCopyWithImpl<$Res> implements _$SettingCopyWith<$Res> {
  __$SettingCopyWithImpl(this._self, this._then);

  final _Setting _self;
  final $Res Function(_Setting) _then;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeMode = null,
    Object? enableAdaptiveTheme = null,
    Object? openAppCount = null,
    Object? didRateApp = null,
    Object? language = null,
    Object? windowsWidth = null,
    Object? windowsHeight = null,
    Object? themeColor = null,
    Object? selectedTab = null,
    Object? colorCollection = null,
    Object? continueWithoutLogin = null,
    Object? randomNumberForWebLogin = null,
    Object? enableApiTesting = null,
    Object? enableImageCompress = null,
    Object? enableJsonFormatter = null,
    Object? enableDatabaseExplorer = null,
    Object? isGenerateForAndroid = null,
    Object? isGenerateForIOs = null,
    Object? isGenerateForMacOs = null,
    Object? isGenerateForWindows = null,
    Object? isGenerateForWeb = null,
    Object? currentGenerateIconForProjectPath = null,
  }) {
    return _then(_Setting(
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
      enableAdaptiveTheme: null == enableAdaptiveTheme
          ? _self.enableAdaptiveTheme
          : enableAdaptiveTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      openAppCount: null == openAppCount
          ? _self.openAppCount
          : openAppCount // ignore: cast_nullable_to_non_nullable
              as int,
      didRateApp: null == didRateApp
          ? _self.didRateApp
          : didRateApp // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      windowsWidth: null == windowsWidth
          ? _self.windowsWidth
          : windowsWidth // ignore: cast_nullable_to_non_nullable
              as double,
      windowsHeight: null == windowsHeight
          ? _self.windowsHeight
          : windowsHeight // ignore: cast_nullable_to_non_nullable
              as double,
      themeColor: null == themeColor
          ? _self.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _self.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      colorCollection: null == colorCollection
          ? _self.colorCollection
          : colorCollection // ignore: cast_nullable_to_non_nullable
              as String,
      continueWithoutLogin: null == continueWithoutLogin
          ? _self.continueWithoutLogin
          : continueWithoutLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      randomNumberForWebLogin: null == randomNumberForWebLogin
          ? _self.randomNumberForWebLogin
          : randomNumberForWebLogin // ignore: cast_nullable_to_non_nullable
              as int,
      enableApiTesting: null == enableApiTesting
          ? _self.enableApiTesting
          : enableApiTesting // ignore: cast_nullable_to_non_nullable
              as bool,
      enableImageCompress: null == enableImageCompress
          ? _self.enableImageCompress
          : enableImageCompress // ignore: cast_nullable_to_non_nullable
              as bool,
      enableJsonFormatter: null == enableJsonFormatter
          ? _self.enableJsonFormatter
          : enableJsonFormatter // ignore: cast_nullable_to_non_nullable
              as bool,
      enableDatabaseExplorer: null == enableDatabaseExplorer
          ? _self.enableDatabaseExplorer
          : enableDatabaseExplorer // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateForAndroid: null == isGenerateForAndroid
          ? _self.isGenerateForAndroid
          : isGenerateForAndroid // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateForIOs: null == isGenerateForIOs
          ? _self.isGenerateForIOs
          : isGenerateForIOs // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateForMacOs: null == isGenerateForMacOs
          ? _self.isGenerateForMacOs
          : isGenerateForMacOs // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateForWindows: null == isGenerateForWindows
          ? _self.isGenerateForWindows
          : isGenerateForWindows // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateForWeb: null == isGenerateForWeb
          ? _self.isGenerateForWeb
          : isGenerateForWeb // ignore: cast_nullable_to_non_nullable
              as bool,
      currentGenerateIconForProjectPath: null ==
              currentGenerateIconForProjectPath
          ? _self.currentGenerateIconForProjectPath
          : currentGenerateIconForProjectPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
