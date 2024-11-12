// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Settings {
  /// Save current theme of this app in this param, it holds string value of [ThemeMode] with value:
  /// ThemeMode.system, ThemeMode.dark, ThemeMode.light
  String get themeMode => throw _privateConstructorUsedError;

  /// Adaptive theme use DynamicTheme package to generate colorScheme
  bool get enableAdaptiveTheme => throw _privateConstructorUsedError;

  /// Open app count will trigger a specific function when user use app for a period of time
  int get openAppCount => throw _privateConstructorUsedError;
  bool get didRateApp => throw _privateConstructorUsedError;

  /// Language of app, those value : English, Tiếng Việt, System default will be convert
  /// to [Locale('en', 'US')] to change value of the app
  String get language => throw _privateConstructorUsedError;

  /// Hold windows size value
  double get windowsWidth => throw _privateConstructorUsedError;

  /// Hold windows size value
  double get windowsHeight => throw _privateConstructorUsedError;

  /// Hold primary color for the app, it can be generate to other colors later to
  /// create colorScheme
  int get themeColor => throw _privateConstructorUsedError;

  /// Save selected tab path for desktop device
  int get selectedTab => throw _privateConstructorUsedError;

  /// Collection of saved color
  String get colorCollection => throw _privateConstructorUsedError;

  /// Working in login screen, it true when user decide to using the app without login
  bool get continueWithoutLogin => throw _privateConstructorUsedError;

  /// A random number for web login
  int get randomNumberForWebLogin => throw _privateConstructorUsedError;
  bool get enableApiTesting => throw _privateConstructorUsedError;
  bool get enableImageCompress => throw _privateConstructorUsedError;
  bool get enableJsonFormatter => throw _privateConstructorUsedError;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res, Settings>;
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
      bool enableJsonFormatter});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res, $Val extends Settings>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
      enableAdaptiveTheme: null == enableAdaptiveTheme
          ? _value.enableAdaptiveTheme
          : enableAdaptiveTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      openAppCount: null == openAppCount
          ? _value.openAppCount
          : openAppCount // ignore: cast_nullable_to_non_nullable
              as int,
      didRateApp: null == didRateApp
          ? _value.didRateApp
          : didRateApp // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      windowsWidth: null == windowsWidth
          ? _value.windowsWidth
          : windowsWidth // ignore: cast_nullable_to_non_nullable
              as double,
      windowsHeight: null == windowsHeight
          ? _value.windowsHeight
          : windowsHeight // ignore: cast_nullable_to_non_nullable
              as double,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      colorCollection: null == colorCollection
          ? _value.colorCollection
          : colorCollection // ignore: cast_nullable_to_non_nullable
              as String,
      continueWithoutLogin: null == continueWithoutLogin
          ? _value.continueWithoutLogin
          : continueWithoutLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      randomNumberForWebLogin: null == randomNumberForWebLogin
          ? _value.randomNumberForWebLogin
          : randomNumberForWebLogin // ignore: cast_nullable_to_non_nullable
              as int,
      enableApiTesting: null == enableApiTesting
          ? _value.enableApiTesting
          : enableApiTesting // ignore: cast_nullable_to_non_nullable
              as bool,
      enableImageCompress: null == enableImageCompress
          ? _value.enableImageCompress
          : enableImageCompress // ignore: cast_nullable_to_non_nullable
              as bool,
      enableJsonFormatter: null == enableJsonFormatter
          ? _value.enableJsonFormatter
          : enableJsonFormatter // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingImplCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$$SettingImplCopyWith(
          _$SettingImpl value, $Res Function(_$SettingImpl) then) =
      __$$SettingImplCopyWithImpl<$Res>;
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
      bool enableJsonFormatter});
}

/// @nodoc
class __$$SettingImplCopyWithImpl<$Res>
    extends _$SettingsCopyWithImpl<$Res, _$SettingImpl>
    implements _$$SettingImplCopyWith<$Res> {
  __$$SettingImplCopyWithImpl(
      _$SettingImpl _value, $Res Function(_$SettingImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$SettingImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
      enableAdaptiveTheme: null == enableAdaptiveTheme
          ? _value.enableAdaptiveTheme
          : enableAdaptiveTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      openAppCount: null == openAppCount
          ? _value.openAppCount
          : openAppCount // ignore: cast_nullable_to_non_nullable
              as int,
      didRateApp: null == didRateApp
          ? _value.didRateApp
          : didRateApp // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      windowsWidth: null == windowsWidth
          ? _value.windowsWidth
          : windowsWidth // ignore: cast_nullable_to_non_nullable
              as double,
      windowsHeight: null == windowsHeight
          ? _value.windowsHeight
          : windowsHeight // ignore: cast_nullable_to_non_nullable
              as double,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      colorCollection: null == colorCollection
          ? _value.colorCollection
          : colorCollection // ignore: cast_nullable_to_non_nullable
              as String,
      continueWithoutLogin: null == continueWithoutLogin
          ? _value.continueWithoutLogin
          : continueWithoutLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      randomNumberForWebLogin: null == randomNumberForWebLogin
          ? _value.randomNumberForWebLogin
          : randomNumberForWebLogin // ignore: cast_nullable_to_non_nullable
              as int,
      enableApiTesting: null == enableApiTesting
          ? _value.enableApiTesting
          : enableApiTesting // ignore: cast_nullable_to_non_nullable
              as bool,
      enableImageCompress: null == enableImageCompress
          ? _value.enableImageCompress
          : enableImageCompress // ignore: cast_nullable_to_non_nullable
              as bool,
      enableJsonFormatter: null == enableJsonFormatter
          ? _value.enableJsonFormatter
          : enableJsonFormatter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingImpl implements _Setting {
  const _$SettingImpl(
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
      required this.enableJsonFormatter});

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
  String toString() {
    return 'Settings(themeMode: $themeMode, enableAdaptiveTheme: $enableAdaptiveTheme, openAppCount: $openAppCount, didRateApp: $didRateApp, language: $language, windowsWidth: $windowsWidth, windowsHeight: $windowsHeight, themeColor: $themeColor, selectedTab: $selectedTab, colorCollection: $colorCollection, continueWithoutLogin: $continueWithoutLogin, randomNumberForWebLogin: $randomNumberForWebLogin, enableApiTesting: $enableApiTesting, enableImageCompress: $enableImageCompress, enableJsonFormatter: $enableJsonFormatter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingImpl &&
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
                other.enableJsonFormatter == enableJsonFormatter));
  }

  @override
  int get hashCode => Object.hash(
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
      enableJsonFormatter);

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      __$$SettingImplCopyWithImpl<_$SettingImpl>(this, _$identity);
}

abstract class _Setting implements Settings {
  const factory _Setting(
      {required final String themeMode,
      required final bool enableAdaptiveTheme,
      required final int openAppCount,
      required final bool didRateApp,
      required final String language,
      required final double windowsWidth,
      required final double windowsHeight,
      required final int themeColor,
      required final int selectedTab,
      required final String colorCollection,
      required final bool continueWithoutLogin,
      required final int randomNumberForWebLogin,
      required final bool enableApiTesting,
      required final bool enableImageCompress,
      required final bool enableJsonFormatter}) = _$SettingImpl;

  /// Save current theme of this app in this param, it holds string value of [ThemeMode] with value:
  /// ThemeMode.system, ThemeMode.dark, ThemeMode.light
  @override
  String get themeMode;

  /// Adaptive theme use DynamicTheme package to generate colorScheme
  @override
  bool get enableAdaptiveTheme;

  /// Open app count will trigger a specific function when user use app for a period of time
  @override
  int get openAppCount;
  @override
  bool get didRateApp;

  /// Language of app, those value : English, Tiếng Việt, System default will be convert
  /// to [Locale('en', 'US')] to change value of the app
  @override
  String get language;

  /// Hold windows size value
  @override
  double get windowsWidth;

  /// Hold windows size value
  @override
  double get windowsHeight;

  /// Hold primary color for the app, it can be generate to other colors later to
  /// create colorScheme
  @override
  int get themeColor;

  /// Save selected tab path for desktop device
  @override
  int get selectedTab;

  /// Collection of saved color
  @override
  String get colorCollection;

  /// Working in login screen, it true when user decide to using the app without login
  @override
  bool get continueWithoutLogin;

  /// A random number for web login
  @override
  int get randomNumberForWebLogin;
  @override
  bool get enableApiTesting;
  @override
  bool get enableImageCompress;
  @override
  bool get enableJsonFormatter;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
