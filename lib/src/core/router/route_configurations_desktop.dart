import 'package:flutter_toolkits/src/presentation/api/api_test_screen.dart';
import 'package:flutter_toolkits/src/presentation/colors/color_picker_screen.dart';
import 'package:flutter_toolkits/src/presentation/documentation/common_command_screen.dart';
import 'package:flutter_toolkits/src/presentation/documentation/documentation_screen.dart';
import 'package:flutter_toolkits/src/presentation/fonts/fonts_screen.dart';
import 'package:flutter_toolkits/src/presentation/home/ui/screens/desktop_home_screen.dart';
import 'package:flutter_toolkits/src/presentation/icon_generator/app_icon_generator.dart';
import 'package:flutter_toolkits/src/presentation/image_compress/image_compress_screen.dart';
import 'package:flutter_toolkits/src/presentation/json/json_formatter_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:flutter_toolkits/src/presentation/presentation.dart';
import '../../presentation/icons/icons_screen.dart';
import '../core.dart';

// private navigators key shell
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorSettingKey =
    GlobalKey<NavigatorState>(debugLabel: 'Setting');
final _shellNavigatorIconKey = GlobalKey<NavigatorState>(debugLabel: 'Library');
final _shellNavigatorImageCompressKey =
    GlobalKey<NavigatorState>(debugLabel: 'ImageCompress');
final _shellNavigatorIconGeneratorKey =
    GlobalKey<NavigatorState>(debugLabel: 'IconGenerator');
final _shellNavigatorApiKey =
    GlobalKey<NavigatorState>(debugLabel: 'Vocabulary');
final _shellNavigatorOthersKey =
    GlobalKey<NavigatorState>(debugLabel: 'Others');
final _shellNavigatorJsonKey = GlobalKey<NavigatorState>(debugLabel: 'Json');
final _shellNavigatorDocumentationKey =
    GlobalKey<NavigatorState>(debugLabel: 'Documentation');
final _shellNavigatorInfoKey = GlobalKey<NavigatorState>(debugLabel: 'Info');
final _shellNavigatorCommandLineKey =
    GlobalKey<NavigatorState>(debugLabel: 'CommandLine');
final _shellNavigatorFontsKey = GlobalKey<NavigatorState>(debugLabel: 'Fonts');
final _shellNavigatorDashboardKey =
    GlobalKey<NavigatorState>(debugLabel: 'Dashboard');
final _shellNavigatorDesktopAccountKey =
    GlobalKey<NavigatorState>(debugLabel: 'DesktopAccount');
final _shellRequiredLoginKey =
    GlobalKey<NavigatorState>(debugLabel: 'RequiredLogin');
final globalNavigationShellKey =
    GlobalKey<NavigatorState>(debugLabel: 'GlobalNavigationShell');
late StatefulNavigationShell globalNavigationShell;

void goBranch(int index) {
  globalNavigationShell.goBranch(
    index,
    //initialLocation: true,
  );
  // Save selected tab to properties
  final newSettings = Properties.instance.settings.copyWith(selectedTab: index);
  Properties.instance.saveSettings(newSettings);
}

GoRouter routerConfigDesktop = GoRouter(
  initialLocation:
      RoutePath.dashboard, //Properties.instance.settings.selectedTab,
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        globalNavigationShell = navigationShell;
        // the UI shell
        return NavigationSwitchView(navigationShell: navigationShell);
      },
      branches: [
        // 0 dashboard
        StatefulShellBranch(
          navigatorKey: _shellNavigatorDashboardKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.dashboard,
              path: RoutePath.dashboard,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: I18n(child: const DesktopHomeScreen()));
              },
            ),
          ],
        ),
        // 1 account branch
        StatefulShellBranch(
          navigatorKey: _shellNavigatorDesktopAccountKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.desktopUserSettings,
              path: RoutePath.desktopUserSettings,
              pageBuilder: (context, state) {
                return NoTransitionPage(child: I18n(child: Container()));
              },
              routes: const [],
            ),
          ],
        ),
        // 2 setting branch
        StatefulShellBranch(
          navigatorKey: _shellNavigatorSettingKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.commonSettings,
              path: RoutePath.settings,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: I18n(child: const SettingsView()));
              },
            ),
          ],
        ),
        // 3 info
        StatefulShellBranch(
          navigatorKey: _shellNavigatorInfoKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.infos,
              path: RoutePath.infos,
              pageBuilder: (context, state) {
                return NoTransitionPage(child: I18n(child: const InfoView()));
              },
            ),
          ],
        ),
        // 4 documentation
        StatefulShellBranch(
          navigatorKey: _shellNavigatorDocumentationKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.documentation,
              path: RoutePath.documentation,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: I18n(child: const DocumentationScreen()));
              },
            ),
          ],
        ),
        // common CLI
        StatefulShellBranch(
          navigatorKey: _shellNavigatorCommandLineKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.commandLine,
              path: RoutePath.commandLine,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: I18n(child: const CommandLineScreen()));
              },
            ),
          ],
        ),
        // 5 fonts
        StatefulShellBranch(
          navigatorKey: _shellNavigatorFontsKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.fonts,
              path: RoutePath.fonts,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: I18n(child: const FontPreviewerScreen()));
              },
            ),
          ],
        ),
        // 6 color
        StatefulShellBranch(
          navigatorKey: _shellNavigatorOthersKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.color,
              path: RoutePath.color,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: I18n(child: const ColorPickerScreen()));
              },
            ),
          ],
        ),
        // 7 icon
        StatefulShellBranch(
          navigatorKey: _shellNavigatorIconKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.icon,
              path: RoutePath.icon,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: I18n(child: const IconsScreen()));
              },
              routes: [
                // Reading chamber's reading space
                GoRoute(
                    name: RouteName.readingSpace,
                    path: RoutePath.readingSpace,
                    pageBuilder: (context, state) {
                      return NoTransitionPage(
                          child: I18n(
                        child: const IconsScreen(),
                      ));
                    }),
                // Reading history
                GoRoute(
                  name: RouteName.readingChamberHistory,
                  path: RoutePath.readingChamberHistory,
                  pageBuilder: (context, state) {
                    return NoTransitionPage(
                        child: I18n(
                      child: const IconsScreen(),
                    ));
                  },
                ),
                // Reading bookmarks
                GoRoute(
                  name: RouteName.readingChamberBookmark,
                  path: RoutePath.readingChamberBookmark,
                  pageBuilder: (context, state) {
                    return NoTransitionPage(
                      child: I18n(
                        child: const IconsScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        // 8 json
        StatefulShellBranch(
          navigatorKey: _shellNavigatorJsonKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.json,
              path: RoutePath.json,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: I18n(child: const JsonFormatterScreen()));
              },
            ),
          ],
        ),
        // 9 icon generator
        StatefulShellBranch(
          navigatorKey: _shellNavigatorIconGeneratorKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.iconGenerator,
              path: RoutePath.iconGenerator,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: I18n(
                    child: const AppIconGenerator(),
                  ),
                );
              },
            ),
          ],
        ),
        // 10 compress image
        StatefulShellBranch(
          navigatorKey: _shellNavigatorImageCompressKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.imageCompress,
              path: RoutePath.imageCompress,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: I18n(
                    child: const ImageCompressScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        // 11 api
        StatefulShellBranch(
          navigatorKey: _shellNavigatorApiKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.api,
              path: RoutePath.api,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: I18n(
                    child: const ApiTestScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) {
    return I18n(child: const IconsScreen());
  },
);
