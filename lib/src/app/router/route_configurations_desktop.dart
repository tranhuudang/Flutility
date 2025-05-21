import 'package:flutility/src/features/api/api_test_screen.dart';
import 'package:flutility/src/features/colors/color_picker_screen.dart';
import 'package:flutility/src/features/dev_notes/note_taking_screen.dart';
import 'package:flutility/src/features/documentation/common_command_screen.dart';
import 'package:flutility/src/features/documentation/documentation_screen.dart';
import 'package:flutility/src/features/donation/donation_screen.dart';
import 'package:flutility/src/features/fonts/fonts_screen.dart';
import 'package:flutility/src/features/home/ui/screens/desktop_home_screen.dart';
import 'package:flutility/src/features/icon_generator/app_icon_generator.dart';
import 'package:flutility/src/features/image_compress/image_compress_screen.dart';
import 'package:flutility/src/features/json/json_formatter_screen.dart';
import 'package:flutility/src/features/roadmap/ui/roadmap_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:flutility/src/features/presentation.dart';
import '../../features/icons/icons_screen.dart';
import '../app.dart';

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
final _shellNavigatorNoteTakingKey =
    GlobalKey<NavigatorState>(debugLabel: 'noteTaking');
final _shellNavigatorDonationKey =
    GlobalKey<NavigatorState>(debugLabel: 'donation');
final _shellNavigatorDatabaseExplorerKey =
    GlobalKey<NavigatorState>(debugLabel: 'DatabaseExplorer');
final _shellNavigatorOthersKey =
    GlobalKey<NavigatorState>(debugLabel: 'Others');
final _shellNavigatorJsonKey = GlobalKey<NavigatorState>(debugLabel: 'Json');
final _shellNavigatorDocumentationKey =
    GlobalKey<NavigatorState>(debugLabel: 'Documentation');
final _shellNavigatorInfoKey = GlobalKey<NavigatorState>(debugLabel: 'Info');
final _shellNavigatorCommandLineKey =
    GlobalKey<NavigatorState>(debugLabel: 'CommandLine');
final _shellNavigatorFontsKey = GlobalKey<NavigatorState>(debugLabel: 'Fonts');
final _shellNavigatorRoadmapKey =
    GlobalKey<NavigatorState>(debugLabel: 'Roadmap');
final _shellNavigatorDashboardKey =
    GlobalKey<NavigatorState>(debugLabel: 'Dashboard');
final _shellNavigatorDesktopAccountKey =
    GlobalKey<NavigatorState>(debugLabel: 'DesktopAccount');
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
        // 5 common CLI
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
        // 6 setting branch
        StatefulShellBranch(
          navigatorKey: _shellNavigatorRoadmapKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.roadmap,
              path: RoutePath.roadmap,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: I18n(child: const RoadmapScreen()));
              },
            ),
          ],
        ),
        // 7 fonts
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
        // 8 color
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
        // 9 icon
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
        // 10 json
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
        // 11 icon generator
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
                    child: const AppIconGeneratorScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        // 12 compress image
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
        // 13 api
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
        // 14 api
        StatefulShellBranch(
          navigatorKey: _shellNavigatorNoteTakingKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.noteTaking,
              path: RoutePath.noteTaking,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: I18n(
                    child: const DevNoteScreen(),
                  ),
                );
              },
            ),
          ],
        ),

        /// 15 donation
        StatefulShellBranch(
          navigatorKey: _shellNavigatorDonationKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.donation,
              path: RoutePath.donation,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: I18n(
                    child: const DonationScreen(),
                  ),
                );
              },
            ),
          ],
        ),
         // 16 database explorer
        StatefulShellBranch(
          navigatorKey: _shellNavigatorDatabaseExplorerKey,
          routes: [
            // top route inside branch
            GoRoute(
              name: RouteName.databaseExplorer,
              path: RoutePath.databaseExplorer,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: I18n(child: const DatabaseExplorerScreen()));
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
