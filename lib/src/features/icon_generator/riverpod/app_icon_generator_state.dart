import 'dart:io';

import 'package:flutility/src/app/app.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_icon_generator_state.freezed.dart';

@freezed
abstract class AppIconGeneratorState with _$AppIconGeneratorState {
  const factory AppIconGeneratorState({
    required bool isGenerating,
    required bool isGenerateSuccess,
    required bool isGenerateError,
    required bool generateForAndroid,
    required bool generateForIos,
    required bool generateForMacos,
    required bool generateForWeb,
    required bool generateForWindows,
    required String projectPath,
    required File? selectedImage,
  }) = _AppIconGeneratorState;

  factory AppIconGeneratorState.initial() {
    final settings = Properties.instance.settings;
    return AppIconGeneratorState(
      isGenerating: false,
      isGenerateSuccess: false,
      isGenerateError: false,
      generateForAndroid: settings.isGenerateForAndroid,
      generateForIos: settings.isGenerateForIOs,
      generateForMacos: settings.isGenerateForMacOs,
      generateForWeb: settings.isGenerateForWeb,
      generateForWindows: settings.isGenerateForWindows,
      projectPath: settings.currentGenerateIconForProjectPath,
      selectedImage: null,
    );
  }
}
