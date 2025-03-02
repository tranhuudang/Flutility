// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_icon_generator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppIconGeneratorState {
  bool get isGenerating;
  bool get isGenerateSuccess;
  bool get isGenerateError;
  bool get generateForAndroid;
  bool get generateForIos;
  bool get generateForMacos;
  bool get generateForWeb;
  bool get generateForWindows;
  String get projectPath;
  File? get selectedImage;

  /// Create a copy of AppIconGeneratorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppIconGeneratorStateCopyWith<AppIconGeneratorState> get copyWith =>
      _$AppIconGeneratorStateCopyWithImpl<AppIconGeneratorState>(
          this as AppIconGeneratorState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppIconGeneratorState &&
            (identical(other.isGenerating, isGenerating) ||
                other.isGenerating == isGenerating) &&
            (identical(other.isGenerateSuccess, isGenerateSuccess) ||
                other.isGenerateSuccess == isGenerateSuccess) &&
            (identical(other.isGenerateError, isGenerateError) ||
                other.isGenerateError == isGenerateError) &&
            (identical(other.generateForAndroid, generateForAndroid) ||
                other.generateForAndroid == generateForAndroid) &&
            (identical(other.generateForIos, generateForIos) ||
                other.generateForIos == generateForIos) &&
            (identical(other.generateForMacos, generateForMacos) ||
                other.generateForMacos == generateForMacos) &&
            (identical(other.generateForWeb, generateForWeb) ||
                other.generateForWeb == generateForWeb) &&
            (identical(other.generateForWindows, generateForWindows) ||
                other.generateForWindows == generateForWindows) &&
            (identical(other.projectPath, projectPath) ||
                other.projectPath == projectPath) &&
            (identical(other.selectedImage, selectedImage) ||
                other.selectedImage == selectedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isGenerating,
      isGenerateSuccess,
      isGenerateError,
      generateForAndroid,
      generateForIos,
      generateForMacos,
      generateForWeb,
      generateForWindows,
      projectPath,
      selectedImage);

  @override
  String toString() {
    return 'AppIconGeneratorState(isGenerating: $isGenerating, isGenerateSuccess: $isGenerateSuccess, isGenerateError: $isGenerateError, generateForAndroid: $generateForAndroid, generateForIos: $generateForIos, generateForMacos: $generateForMacos, generateForWeb: $generateForWeb, generateForWindows: $generateForWindows, projectPath: $projectPath, selectedImage: $selectedImage)';
  }
}

/// @nodoc
abstract mixin class $AppIconGeneratorStateCopyWith<$Res> {
  factory $AppIconGeneratorStateCopyWith(AppIconGeneratorState value,
          $Res Function(AppIconGeneratorState) _then) =
      _$AppIconGeneratorStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isGenerating,
      bool isGenerateSuccess,
      bool isGenerateError,
      bool generateForAndroid,
      bool generateForIos,
      bool generateForMacos,
      bool generateForWeb,
      bool generateForWindows,
      String projectPath,
      File? selectedImage});
}

/// @nodoc
class _$AppIconGeneratorStateCopyWithImpl<$Res>
    implements $AppIconGeneratorStateCopyWith<$Res> {
  _$AppIconGeneratorStateCopyWithImpl(this._self, this._then);

  final AppIconGeneratorState _self;
  final $Res Function(AppIconGeneratorState) _then;

  /// Create a copy of AppIconGeneratorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGenerating = null,
    Object? isGenerateSuccess = null,
    Object? isGenerateError = null,
    Object? generateForAndroid = null,
    Object? generateForIos = null,
    Object? generateForMacos = null,
    Object? generateForWeb = null,
    Object? generateForWindows = null,
    Object? projectPath = null,
    Object? selectedImage = freezed,
  }) {
    return _then(_self.copyWith(
      isGenerating: null == isGenerating
          ? _self.isGenerating
          : isGenerating // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateSuccess: null == isGenerateSuccess
          ? _self.isGenerateSuccess
          : isGenerateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateError: null == isGenerateError
          ? _self.isGenerateError
          : isGenerateError // ignore: cast_nullable_to_non_nullable
              as bool,
      generateForAndroid: null == generateForAndroid
          ? _self.generateForAndroid
          : generateForAndroid // ignore: cast_nullable_to_non_nullable
              as bool,
      generateForIos: null == generateForIos
          ? _self.generateForIos
          : generateForIos // ignore: cast_nullable_to_non_nullable
              as bool,
      generateForMacos: null == generateForMacos
          ? _self.generateForMacos
          : generateForMacos // ignore: cast_nullable_to_non_nullable
              as bool,
      generateForWeb: null == generateForWeb
          ? _self.generateForWeb
          : generateForWeb // ignore: cast_nullable_to_non_nullable
              as bool,
      generateForWindows: null == generateForWindows
          ? _self.generateForWindows
          : generateForWindows // ignore: cast_nullable_to_non_nullable
              as bool,
      projectPath: null == projectPath
          ? _self.projectPath
          : projectPath // ignore: cast_nullable_to_non_nullable
              as String,
      selectedImage: freezed == selectedImage
          ? _self.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _AppIconGeneratorState implements AppIconGeneratorState {
  const _AppIconGeneratorState(
      {required this.isGenerating,
      required this.isGenerateSuccess,
      required this.isGenerateError,
      required this.generateForAndroid,
      required this.generateForIos,
      required this.generateForMacos,
      required this.generateForWeb,
      required this.generateForWindows,
      required this.projectPath,
      required this.selectedImage});

  @override
  final bool isGenerating;
  @override
  final bool isGenerateSuccess;
  @override
  final bool isGenerateError;
  @override
  final bool generateForAndroid;
  @override
  final bool generateForIos;
  @override
  final bool generateForMacos;
  @override
  final bool generateForWeb;
  @override
  final bool generateForWindows;
  @override
  final String projectPath;
  @override
  final File? selectedImage;

  /// Create a copy of AppIconGeneratorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppIconGeneratorStateCopyWith<_AppIconGeneratorState> get copyWith =>
      __$AppIconGeneratorStateCopyWithImpl<_AppIconGeneratorState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppIconGeneratorState &&
            (identical(other.isGenerating, isGenerating) ||
                other.isGenerating == isGenerating) &&
            (identical(other.isGenerateSuccess, isGenerateSuccess) ||
                other.isGenerateSuccess == isGenerateSuccess) &&
            (identical(other.isGenerateError, isGenerateError) ||
                other.isGenerateError == isGenerateError) &&
            (identical(other.generateForAndroid, generateForAndroid) ||
                other.generateForAndroid == generateForAndroid) &&
            (identical(other.generateForIos, generateForIos) ||
                other.generateForIos == generateForIos) &&
            (identical(other.generateForMacos, generateForMacos) ||
                other.generateForMacos == generateForMacos) &&
            (identical(other.generateForWeb, generateForWeb) ||
                other.generateForWeb == generateForWeb) &&
            (identical(other.generateForWindows, generateForWindows) ||
                other.generateForWindows == generateForWindows) &&
            (identical(other.projectPath, projectPath) ||
                other.projectPath == projectPath) &&
            (identical(other.selectedImage, selectedImage) ||
                other.selectedImage == selectedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isGenerating,
      isGenerateSuccess,
      isGenerateError,
      generateForAndroid,
      generateForIos,
      generateForMacos,
      generateForWeb,
      generateForWindows,
      projectPath,
      selectedImage);

  @override
  String toString() {
    return 'AppIconGeneratorState(isGenerating: $isGenerating, isGenerateSuccess: $isGenerateSuccess, isGenerateError: $isGenerateError, generateForAndroid: $generateForAndroid, generateForIos: $generateForIos, generateForMacos: $generateForMacos, generateForWeb: $generateForWeb, generateForWindows: $generateForWindows, projectPath: $projectPath, selectedImage: $selectedImage)';
  }
}

/// @nodoc
abstract mixin class _$AppIconGeneratorStateCopyWith<$Res>
    implements $AppIconGeneratorStateCopyWith<$Res> {
  factory _$AppIconGeneratorStateCopyWith(_AppIconGeneratorState value,
          $Res Function(_AppIconGeneratorState) _then) =
      __$AppIconGeneratorStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isGenerating,
      bool isGenerateSuccess,
      bool isGenerateError,
      bool generateForAndroid,
      bool generateForIos,
      bool generateForMacos,
      bool generateForWeb,
      bool generateForWindows,
      String projectPath,
      File? selectedImage});
}

/// @nodoc
class __$AppIconGeneratorStateCopyWithImpl<$Res>
    implements _$AppIconGeneratorStateCopyWith<$Res> {
  __$AppIconGeneratorStateCopyWithImpl(this._self, this._then);

  final _AppIconGeneratorState _self;
  final $Res Function(_AppIconGeneratorState) _then;

  /// Create a copy of AppIconGeneratorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isGenerating = null,
    Object? isGenerateSuccess = null,
    Object? isGenerateError = null,
    Object? generateForAndroid = null,
    Object? generateForIos = null,
    Object? generateForMacos = null,
    Object? generateForWeb = null,
    Object? generateForWindows = null,
    Object? projectPath = null,
    Object? selectedImage = freezed,
  }) {
    return _then(_AppIconGeneratorState(
      isGenerating: null == isGenerating
          ? _self.isGenerating
          : isGenerating // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateSuccess: null == isGenerateSuccess
          ? _self.isGenerateSuccess
          : isGenerateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenerateError: null == isGenerateError
          ? _self.isGenerateError
          : isGenerateError // ignore: cast_nullable_to_non_nullable
              as bool,
      generateForAndroid: null == generateForAndroid
          ? _self.generateForAndroid
          : generateForAndroid // ignore: cast_nullable_to_non_nullable
              as bool,
      generateForIos: null == generateForIos
          ? _self.generateForIos
          : generateForIos // ignore: cast_nullable_to_non_nullable
              as bool,
      generateForMacos: null == generateForMacos
          ? _self.generateForMacos
          : generateForMacos // ignore: cast_nullable_to_non_nullable
              as bool,
      generateForWeb: null == generateForWeb
          ? _self.generateForWeb
          : generateForWeb // ignore: cast_nullable_to_non_nullable
              as bool,
      generateForWindows: null == generateForWindows
          ? _self.generateForWindows
          : generateForWindows // ignore: cast_nullable_to_non_nullable
              as bool,
      projectPath: null == projectPath
          ? _self.projectPath
          : projectPath // ignore: cast_nullable_to_non_nullable
              as String,
      selectedImage: freezed == selectedImage
          ? _self.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

// dart format on
