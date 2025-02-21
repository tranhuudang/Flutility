import 'package:flutility/src/core/core.dart';
import 'package:flutility/src/core/router/route_configurations_desktop.dart';
import 'package:flutility/src/presentation/presentation.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class App extends StatefulWidget {
  const App({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late TextEditingController controller;
  bool isSendingFeedbacks = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        return DynamicColorBuilder(
          builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
            final lightColorScheme =
                _getColorScheme(state, lightDynamic, Brightness.light);
            final darkColorScheme =
                _getColorScheme(state, darkDynamic, Brightness.dark);
            return _buildMaterialApp(state, lightColorScheme, darkColorScheme);
          },
        );
      },
    );
  }

  ColorScheme _getColorScheme(
      SettingState state, ColorScheme? dynamicScheme, Brightness brightness) {
    if (state.params.enableAdaptiveTheme && dynamicScheme != null) {
      return dynamicScheme.harmonized();
    } else {
      return ColorScheme.fromSeed(
        seedColor: state.params.accentColor,
        brightness: brightness,
      );
    }
  }

  Widget _buildMaterialApp(SettingState state, ColorScheme lightColorScheme,
      ColorScheme darkColorScheme) {
    return FlutterSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp.router(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('vi', 'VI'),
            Locale('zh', 'CN')
          ],
          locale: state.params.language.toLocale(),
          themeMode: state.params.themeMode,
          theme: lightTheme(colorScheme: lightColorScheme),
          darkTheme: darkTheme(colorScheme: darkColorScheme),
          title: DefaultSettings.appName,
          debugShowCheckedModeBanner: false,
          routerConfig: routerConfigDesktop,
        );
      },
    );
  }
}
