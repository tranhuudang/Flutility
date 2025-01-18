import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/icons/data/fluentui_system_icons.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class FluentIconsScreen extends StatefulWidget {
  const FluentIconsScreen({super.key});

  @override
  State<FluentIconsScreen> createState() => _FluentIconsScreenState();
}

class _FluentIconsScreenState extends State<FluentIconsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DottedBorder(
                dashPattern: const [4, 4],
                borderType: BorderType.RRect,
                strokeWidth: 1,
                radius: const Radius.circular(5),
                color: context.theme.dividerColor,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'For implementation steps, visit:'.i18n,
                      ),
                      4.height,
                      Row(
                        children: [
                          Image.asset(
                            'assets/flutter.png',
                            width: 20,
                            height: 20,
                          ),
                          8.width,
                          InkWell(
                            onTap: () async {
                              final Uri url = Uri.parse(
                                  'https://pub.dev/packages/fluentui_system_icons');
                              if (!await launchUrl(url,
                                  mode: LaunchMode.externalApplication)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Text(
                              'Fluent UI System Icons on pub.dev'.i18n,
                              style: TextStyle(
                                color: context.theme.colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      4.height,
                      Text(
                        'You can learn how to use Fluent UI System Icons in your Flutter app by following the documentation.'
                            .i18n,
                      ),
                    ],
                  ),
                ),
              ),
              24.height,
            ],
          ),
        ),
        Expanded(
          child: ResponsiveBuilder(builder: (context, info) {
            var crossAxisCount = info.isMobile
                ? 4
                : info.isTablet
                    ? 5
                    : info.isDesktop
                        ? 7
                        : 4;
            return GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: FluentuiSystemIcons.fluentuiSystemIcons.length,
              itemBuilder: (context, index) {
                String iconPath =
                    FluentuiSystemIcons.fluentuiSystemIcons[index];
                String iconName = iconPath
                    .split('/')
                    .last
                    .split('.')
                    .first
                    .replaceAll("ic_fluent_", "");
                return InkWell(
                  onTap: () {
                    Clipboard.setData(
                        ClipboardData(text: 'FluentIcons.$iconName'));
                    context.showSnackBar(content: 'Copied to clipboard'.i18n);
                  },
                  child: Column(
                    children: [
                      ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              context.theme.colorScheme.primary,
                              BlendMode.srcIn),
                          child: SvgPicture.asset(
                            iconPath,
                            height: 36,
                            width: 36,
                          )),
                      4.height,
                      Text(
                        iconName,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}

