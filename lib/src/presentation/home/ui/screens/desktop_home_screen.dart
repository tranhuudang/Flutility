import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutility/src/app/router/route_configurations_desktop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../presentation.dart';
import '../widgets/toggle_diague.dart';

class DesktopHomeScreen extends StatefulWidget {
  const DesktopHomeScreen({super.key});

  @override
  State<DesktopHomeScreen> createState() => _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends State<DesktopHomeScreen> {
  late bool isJsonFormatterEnabled;
  late bool isImageCompressorEnabled;
  late bool isApiTestingEnabled;

  @override
  void initState() {
    super.initState();
    isJsonFormatterEnabled = Properties.instance.settings.enableJsonFormatter;
    isImageCompressorEnabled = Properties.instance.settings.enableImageCompress;
    isApiTestingEnabled = Properties.instance.settings.enableApiTesting;
    _seekFeedback();
  }

  void _seekFeedback() async {
    final didRateApp = Properties.instance.settings.didRateApp;
    final openAppCount = Properties.instance.settings.openAppCount;
    DebugLog.info('Open App Count: $openAppCount');
    if ((!didRateApp && openAppCount != 0 && openAppCount % 2 == 0) ||
        (didRateApp && openAppCount % 50 == 0)) {
      await Future.delayed(const Duration(seconds: 2), () {
        context.showAlertDialog(
            actionButtonTitle: 'Feedback'.i18n,
            title: 'Help Us Improve'.i18n,
            content:
                "If something isn’t working as expected, we’d like to know. Share your feedback on how we can improve or let us know what you enjoy about our app."
                    .i18n,
            action: () {
              goToStoreListing();
              Properties.instance.saveSettings(
                  Properties.instance.settings.copyWith(didRateApp: true));
            });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(children: [
            Expanded(
              child: Container(
                height: 160,
                color: context.theme.colorScheme.surfaceContainerLow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: .3,
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset('assets/flutter.png')),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            child: Text('${DateTime.now().year}.$appVersion'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ReleaseNotesView()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DefaultSettings.appName,
                                  style: context.theme.textTheme.headlineSmall,
                                ),
                                const SizedBox(width: 100, child: Divider()),
                                Text(DefaultSettings.appDescription.i18n)
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildIconButton(
                                  icon: const Icon(
                                    FontAwesomeIcons.github,
                                    size: 16,
                                  ),
                                  url:
                                      'https://github.com/tranhuudang/flutter_toolkit'),
                              _buildIconButton(
                                  icon: const Icon(
                                    Icons.mail,
                                    size: 20,
                                  ),
                                  url: 'mailto:dt148f148@gmail.com'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
          const Divider(
            height: 0,
          ),
          Row(
            children: [
              Expanded(
                child: DashboardShape(
                  backgroundColor:
                      context.theme.colorScheme.surfaceContainerHigh,
                  textColor: context.theme.colorScheme.onSurface,
                  text: 'Surface Container High',
                ),
              ),
              DashboardShape(
                backgroundColor: context.theme.colorScheme.primary,
                textColor: context.theme.colorScheme.onPrimary,
                text: 'Primary',
              ),
              DashboardShape(
                backgroundColor: context.theme.colorScheme.onSurface,
                textColor: context.theme.colorScheme.onPrimary,
                text: 'On Surface',
              ),
            ],
          ),

          /// Overview
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text('Documentation'.i18n,
                style: context.theme.textTheme.titleSmall),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 90),
                    shrinkWrap: true,
                    children: [
                      OverviewItem(
                          icon: FluentIcons.document_search_16_regular,
                          title: 'Flutter Documentation'.i18n,
                          subtitle:
                              'Explore setup steps, API references, and example projects to accelerate your development.'
                                  .i18n,
                          onTap: () {
                            goBranch(4);
                          }),
                      OverviewItem(
                          icon: FluentIcons.tasks_app_20_regular,
                          title: 'Common Flutter CLI Commands'.i18n,
                          subtitle:
                              'A command-line interface for managing Flutter project.'
                                  .i18n,
                          onTap: () {
                            goBranch(5);
                          }),
                      OverviewItem(
                        icon: FluentIcons.map_16_regular,
                        title: 'Flutter Learning Roadmap'.i18n,
                        subtitle:
                            'A structured guide to help you advance from beginner to expert in Flutter.'
                                .i18n,
                        onTap: () {
                          goBranch(6);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Core
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                Text('Features'.i18n,
                    style: context.theme.textTheme.titleSmall),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 90),
                    shrinkWrap: true,
                    children: [
                      OverviewItem(
                          icon: FluentIcons.text_font_16_regular,
                          title: 'Fonts Preview'.i18n,
                          subtitle:
                              'Choose your preferred font style and size.'.i18n,
                          onTap: () {
                            goBranch(7);
                          }),
                      OverviewItem(
                        icon: FluentIcons.color_16_regular,
                        title: 'Color Picker'.i18n,
                        subtitle:
                            'Pick the perfect color for your project.'.i18n,
                        onTap: () {
                          goBranch(8);
                        },
                      ),
                      OverviewItem(
                        icon: FluentIcons.icons_20_regular,
                        title: 'Icons Preview'.i18n,
                        subtitle:
                            'Browse and select from a variety of icons.'.i18n,
                        onTap: () {
                          goBranch(9);
                        },
                      ),
                      OverviewItem(
                        icon: FluentIcons.apps_settings_16_regular,
                        title: 'App Icon Setter for Flutter'.i18n,
                        subtitle:
                            'Create custom icons tailored to your needs.'.i18n,
                        onTap: () {
                          goBranch(11);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Core
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                Text('Additional Tools'.i18n,
                    style: context.theme.textTheme.titleSmall),
                const Spacer(),
                TextButton(
                    onPressed: () async {
                      // Function to show the dialog in your main widget
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            const ToggleToolsDialog(),
                      ).then((result) {
                        if (result != null) {
                          setState(() {
                            // Handle the result (toggle values) here
                            isJsonFormatterEnabled = result['jsonFormatter'];
                            isImageCompressorEnabled =
                                result['imageCompressor'];
                            isApiTestingEnabled = result['apiTesting'];
                          });
                        }
                      });
                    },
                    child: Text('Options'.i18n))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 90),
                    shrinkWrap: true,
                    children: [
                      if (isJsonFormatterEnabled)
                        OverviewItem(
                          icon: FluentIcons.data_pie_20_regular,
                          title: 'JSON Formatter'.i18n,
                          subtitle:
                              'Format your JSON data for better readability.'
                                  .i18n,
                          onTap: () {
                            goBranch(10);
                          },
                        ),
                      if (isImageCompressorEnabled)
                        OverviewItem(
                          icon: Icons.compress,
                          title: 'Image Compress'.i18n,
                          subtitle:
                              'Reduce image file sizes without sacrificing quality.'
                                  .i18n,
                          onTap: () {
                            goBranch(12);
                          },
                        ),
                      if (isApiTestingEnabled)
                        OverviewItem(
                          icon: FluentIcons.network_check_20_regular,
                          title: 'API Testing'.i18n,
                          subtitle:
                              'Test and debug your API endpoints efficiently.'
                                  .i18n,
                          onTap: () {
                            goBranch(13);
                          },
                        ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OverviewItem extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const OverviewItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Container(
          height: 90,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              border:
                  Border.all(color: context.theme.dividerColor.withOpacity(.5)),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              8.width,
              if (icon != null)
                Icon(
                  icon,
                  size: 30,
                ),
              16.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      style: context.theme.textTheme.bodyMedium,
                    ),
                    Opacity(
                        opacity: .5,
                        child: Text(
                          subtitle,
                          style: context.theme.textTheme.bodySmall,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardShape extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  const DashboardShape({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 88,
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 10),
            ),
            Text(
              '#${textColor.toHexString()}',
              style: TextStyle(color: textColor, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildIconButton({required Icon icon, required String url}) {
  return IconButton(
      onPressed: () async {
        final Uri uri = Uri.parse(url);
        if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
          throw Exception('Could not launch $uri');
        }
      },
      icon: icon);
}
