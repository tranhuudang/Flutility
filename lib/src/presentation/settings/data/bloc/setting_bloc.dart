import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/presentation.dart';

class SettingBlocParams {
  final ThemeMode themeMode;
  final Color accentColor;
  final String language;
  final bool enableAdaptiveTheme;
  SettingBlocParams({
    required this.themeMode,
    required this.accentColor,
    required this.language,
    required this.enableAdaptiveTheme,
  });
  SettingBlocParams copyWith({
    ThemeMode? themeMode,
    Color? accentColor,
    String? language,
    bool? enableAdaptiveTheme,
  }) {
    return SettingBlocParams(
      themeMode: themeMode ?? this.themeMode,
      accentColor: accentColor ?? this.accentColor,
      language: language ?? this.language,
      enableAdaptiveTheme: enableAdaptiveTheme ?? this.enableAdaptiveTheme,
    );
  }

  static SettingBlocParams init() {
    final defaultData = Properties.instance.settings;
    return SettingBlocParams(
        themeMode: defaultData.themeMode.toThemeMode(),
        accentColor: Color(defaultData.themeColor),
        language: defaultData.language,
        enableAdaptiveTheme: false,);
  }
}

/// Events
abstract class SettingEvent {}

class EnableAdaptiveThemeColorEvent extends SettingEvent {}

class ChangeThemeModeEvent extends SettingEvent {
  final ThemeMode themeMode;
  ChangeThemeModeEvent({required this.themeMode});
}

class ChangeLanguageEvent extends SettingEvent {
  final String language;
  ChangeLanguageEvent({required this.language});
}

class ChangeThemeColorEvent extends SettingEvent {
  final Color color;
  ChangeThemeColorEvent({required this.color});
}

class ForceTranslateVietnameseToEnglish extends SettingEvent {}

class ForceTranslateEnglishToVietnamese extends SettingEvent {}

class AutoDetectLanguage extends SettingEvent {}

/// States
abstract class SettingState {
  final SettingBlocParams params;
  SettingState({required this.params});
}

class SettingInitial extends SettingState {
  SettingInitial({required super.params});
}

class SettingUpdated extends SettingState {
  SettingUpdated({required super.params});
}

/// Bloc

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingInitial(params: SettingBlocParams.init())) {
    on<ChangeThemeColorEvent>(_userChangeThemeColor);
    on<EnableAdaptiveThemeColorEvent>(_enableAdaptiveThemeColor);
    on<ChangeThemeModeEvent>(_themeModeChanged);
    on<ChangeLanguageEvent>(_languageChanged);
  }

  FutureOr<void> _languageChanged(
      ChangeLanguageEvent event, Emitter<SettingState> emit) {
    final newSettings =
        Properties.instance.settings.copyWith(language: event.language);
    Properties.instance.saveSettings(newSettings);
    emit(SettingUpdated(
        params: state.params.copyWith(language: event.language)));
  }

  FutureOr<void> _userChangeThemeColor(
      ChangeThemeColorEvent event, Emitter<SettingState> emit) {
    final newSettings = Properties.instance.settings
        .copyWith(themeColor: event.color.value, enableAdaptiveTheme: false);
    Properties.instance.saveSettings(newSettings);
    emit(SettingUpdated(
        params: state.params
            .copyWith(accentColor: event.color, enableAdaptiveTheme: false)));
  }

  FutureOr<void> _enableAdaptiveThemeColor(
      EnableAdaptiveThemeColorEvent event, Emitter<SettingState> emit) {
    final newSettings =
        Properties.instance.settings.copyWith(enableAdaptiveTheme: true);
    Properties.instance.saveSettings(newSettings);
    emit(SettingUpdated(
        params: state.params.copyWith(enableAdaptiveTheme: true)));
  }

  FutureOr<void> _themeModeChanged(
      ChangeThemeModeEvent event, Emitter<SettingState> emit) {
    final newSettings = Properties.instance.settings
        .copyWith(themeMode: event.themeMode.toString());
    Properties.instance.saveSettings(newSettings);
    emit(SettingUpdated(
        params: state.params.copyWith(themeMode: event.themeMode)));
  }
}
