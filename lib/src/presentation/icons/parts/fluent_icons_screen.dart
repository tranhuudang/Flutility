import 'package:dak_solutions_common/dak_solutions_common.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutility/src/presentation/icons/data/fluentui_system_icons.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class FluentIconsScreen extends StatefulWidget {
  const FluentIconsScreen({super.key});

  @override
  State<FluentIconsScreen> createState() => _FluentIconsScreenState();
}

class _FluentIconsScreenState extends State<FluentIconsScreen> {
  List<String> fluentuiSystemIcons = FluentuiSystemIcons.fluentuiSystemIcons;
  final ScrollController _scrollController = ScrollController();
  bool _documentVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      setState(() {
        _documentVisible = true;
      });
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      setState(() {
        _documentVisible = false;
      });
    }
  }

    @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: _documentVisible,
          child: Padding(
            padding: const EdgeInsets.all(16),
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
               // 24.height,
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search'.i18n,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            ),
            onChanged: (text) {
              setState(() {
                fluentuiSystemIcons = FluentuiSystemIcons.fluentuiSystemIcons
                    .where((item) => item.contains(text))
                    .toList();
              });
            },
          ),
        ),
        16.height,
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
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: fluentuiSystemIcons.length,
              itemBuilder: (context, index) {
                String iconPath = fluentuiSystemIcons[index];
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
