import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoys/src/presentation/presentation.dart';
import 'package:fluttertoys/src/core/core.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  final _streamController = StreamController<ThemeMode>();

  @override
  Widget build(BuildContext context) {
    final settingBloc = context.read<SettingBloc>();
    return Row(
      children: [
        const DarkModeButtonTonal(),
        8.width,
        FilledButton.tonalIcon(
          onPressed: () {
            _streamController.sink.add(ThemeMode.system);
            settingBloc.add(ChangeThemeModeEvent(themeMode: ThemeMode.system));
          },
          icon: const Icon(Icons.auto_awesome),
          label: Text('Adaptive'.i18n),
        ),
      ],
    );
  }
}

class DarkModeButton extends StatefulWidget {
  final double size;
  const DarkModeButton({super.key, this.size = 24});

  @override
  State<DarkModeButton> createState() => _DarkModeButtonState();
}

class _DarkModeButtonState extends State<DarkModeButton> {
  final _streamController = StreamController<ThemeMode>();

  @override
  Widget build(BuildContext context) {
    final settingBloc = context.read<SettingBloc>();
    return StreamBuilder<ThemeMode>(
      initialData: Properties.instance.settings.themeMode.toThemeMode(),
      stream: _streamController.stream,
      builder: (context, snapshot) {
        return IconButton(
            onPressed: () async {
              if (snapshot.data == ThemeMode.light) {
                _streamController.sink.add(ThemeMode.dark);
                await Future.delayed(const Duration(milliseconds: 500)).then((_) {
                  settingBloc
                      .add(ChangeThemeModeEvent(themeMode: ThemeMode.dark));
                });
              } else {
                _streamController.sink.add(ThemeMode.light);
                await Future.delayed(const Duration(milliseconds: 500)).then((_) {
                  settingBloc
                      .add(ChangeThemeModeEvent(themeMode: ThemeMode.light));
                });
              }
            },
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: snapshot.data == ThemeMode.light
                  ? Icon(
                      Icons.light_mode,
                      size: widget.size,
                      key: const ValueKey(ThemeMode.light),
                    )
                  :  Icon(
                      Icons.dark_mode,
                size: widget.size,
                      key: const ValueKey(ThemeMode.dark),
                    ),
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: child.key == const ValueKey(ThemeMode.dark)
                      ? Tween<double>(begin: 0.25, end: 0).animate(animation)
                      : Tween<double>(begin: 0.75, end: 1).animate(animation),
                  child: ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                );
              },
            ));
      },
    );
  }
}

class DarkModeButtonTonal extends StatefulWidget {
  final double size;
  const DarkModeButtonTonal({super.key, this.size = 24});

  @override
  State<DarkModeButtonTonal> createState() => _DarkModeButtonTonalState();
}

class _DarkModeButtonTonalState extends State<DarkModeButtonTonal> {
  final _streamController = StreamController<ThemeMode>();

  @override
  Widget build(BuildContext context) {
    final settingBloc = context.read<SettingBloc>();
    return StreamBuilder<ThemeMode>(
      initialData: Properties.instance.settings.themeMode.toThemeMode(),
      stream: _streamController.stream,
      builder: (context, snapshot) {
        return IconButton(
            onPressed: () async {
              if (snapshot.data == ThemeMode.light) {
                _streamController.sink.add(ThemeMode.dark);
                await Future.delayed(const Duration(milliseconds: 500)).then((_) {
                  settingBloc
                      .add(ChangeThemeModeEvent(themeMode: ThemeMode.dark));
                });
              } else {
                _streamController.sink.add(ThemeMode.light);
                await Future.delayed(const Duration(milliseconds: 500)).then((_) {
                  settingBloc
                      .add(ChangeThemeModeEvent(themeMode: ThemeMode.light));
                });
              }
            },
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: snapshot.data == ThemeMode.light
                  ?  Icon(
                Icons.light_mode,
                size: widget.size,
                key: const ValueKey(ThemeMode.light),
              )
                  :  Icon(
                Icons.dark_mode,
                size: widget.size,
                key: const ValueKey(ThemeMode.dark),
              ),
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: child.key == const ValueKey(ThemeMode.dark)
                      ? Tween<double>(begin: 0.25, end: 0).animate(animation)
                      : Tween<double>(begin: 0.75, end: 1).animate(animation),
                  child: ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                );
              },
            ));
      },
    );
  }
}

