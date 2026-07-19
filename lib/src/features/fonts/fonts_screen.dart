import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutility/src/features/fonts/text_theme_showcase.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'fonts_list.dart';
import 'package:flutility/generated/l10n.dart';

class FontPreviewerScreen extends StatefulWidget {
  const FontPreviewerScreen({super.key});

  @override
  State<FontPreviewerScreen> createState() => _FontPreviewerScreenState();
}

class _FontPreviewerScreenState extends State<FontPreviewerScreen> {
  String selectedFont = 'Teko'; // Default font
  String sampleText =
      S.current.theQuickBrownFoxJumpsOverTheLazyDog; // Text to preview

  // List of different font sizes
  final List<double> fontSizes = [24, 18, 14]; // Decreasing sizes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.text_font_16_regular),
        title: Text(S.of(context).fontPreviewer),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TextThemeShowcaseScreen(
                              font: selectedFont,
                            )));
              },
              child:
                  Text('Show case', style: GoogleFonts.getFont(selectedFont)))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display the list of font families
          Expanded(
            flex: 1,
            child: ListView(
              padding: const EdgeInsets.only(left: 16, right: 16),
              shrinkWrap: true,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DottedBorder(
                        options: RoundedRectDottedBorderOptions(
                          dashPattern: const [4, 4],
                          strokeWidth: 1,
                          radius: const Radius.circular(5),
                          color: context.theme.dividerColor,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).forImplementationStepsVisit,
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
                                          'https://pub.dev/packages/google_fonts');
                                      if (!await launchUrl(url,
                                          mode:
                                              LaunchMode.externalApplication)) {
                                        throw Exception(
                                            'Could not launch $url');
                                      }
                                    },
                                    child: Text(
                                      S.of(context).googleFontsOnPubDev,
                                      style: TextStyle(
                                        color:
                                            context.theme.colorScheme.primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              4.height,
                              Text(
                                'You can learn how to use Google Fonts in your Flutter app by following the documentation.'
                                    ,
                              ),
                            ],
                          ),
                        ),
                      ),
                      24.height,
                    ],
                  ),
                ),
                GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 50),
                  children: fontFamilies_1.map((font) {
                    return FontListItem(
                      font: font,
                      selectedFont: selectedFont,
                      onTap: () {
                        setState(() {
                          selectedFont = font;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          // Display the sample text in different sizes
          Padding(
            padding: const EdgeInsets.all(16),
            child: DottedBorder(
              options: RoundedRectDottedBorderOptions(
                dashPattern: const [4, 4],
                strokeWidth: 1,
                radius: const Radius.circular(5),
                color: context.theme.dividerColor,
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: fontSizes.map((size) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        '$sampleText ($size)',
                        style:
                            GoogleFonts.getFont(selectedFont, fontSize: size),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FontListItem extends StatelessWidget {
  final VoidCallback onTap;
  final String font;
  const FontListItem({
    super.key,
    required this.selectedFont,
    required this.onTap,
    required this.font,
  });

  final String selectedFont;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedFont == font
                ? context.theme.colorScheme.primary
                : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                overflow: TextOverflow.ellipsis,
                font,
                style: GoogleFonts.getFont(font, fontSize: 20),
              ),
            ),
            IconButton(
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(text: font),
                  );
                  context.showSnackBar(content: S.of(context).copiedToClipboard);
                },
                icon: const Icon(Icons.copy_rounded))
          ],
        ),
      ),
    );
  }
}
