import 'package:flutter/material.dart';
import 'package:fluttertoys/src/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemeShowcaseScreen extends StatefulWidget {
  final String font;
  const TextThemeShowcaseScreen({super.key, required this.font});

  @override
  State<TextThemeShowcaseScreen> createState() =>
      _TextThemeShowcaseScreenState();
}

class _TextThemeShowcaseScreenState extends State<TextThemeShowcaseScreen> {
  // List of items in the dropdown
  final List<String> _options = [
    'DropdownMenuItem 1',
    'DropdownMenuItem 2',
    'DropdownMenuItem 3',
    'DropdownMenuItem 4'
  ];

  // The selected value
  String _selectedOption = 'DropdownMenuItem 1';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Theme Showcase'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: Text(
              'Text in a Text Widget',
              style: context.theme.textTheme.titleSmall,
            ),
          ),
          TextStyleItem(
            styleName: 'displayLarge',
            textStyle: GoogleFonts.getFont(widget.font,
                fontSize: textTheme.displayLarge?.fontSize),
          ),
          TextStyleItem(
              styleName: 'displayMedium',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.displayMedium?.fontSize)),
          TextStyleItem(
              styleName: 'displaySmall',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.displaySmall?.fontSize)),
          TextStyleItem(
              styleName: 'headlineLarge',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.headlineLarge?.fontSize)),
          TextStyleItem(
              styleName: 'headlineMedium',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.headlineMedium?.fontSize)),
          TextStyleItem(
              styleName: 'headlineSmall',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.headlineSmall?.fontSize)),
          TextStyleItem(
              styleName: 'titleLarge',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.titleLarge?.fontSize)),
          TextStyleItem(
              styleName: 'titleMedium',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.titleMedium?.fontSize)),
          TextStyleItem(
              styleName: 'titleSmall',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.titleSmall?.fontSize)),
          TextStyleItem(
              styleName: 'bodyLarge',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.bodyLarge?.fontSize)),
          TextStyleItem(
              styleName: 'bodyMedium',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.bodyMedium?.fontSize)),
          TextStyleItem(
              styleName: 'bodySmall',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.bodySmall?.fontSize)),
          TextStyleItem(
              styleName: 'labelLarge',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.labelLarge?.fontSize)),
          TextStyleItem(
              styleName: 'labelMedium',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.labelMedium?.fontSize)),
          TextStyleItem(
              styleName: 'labelSmall',
              textStyle: GoogleFonts.getFont(widget.font,
                  fontSize: textTheme.labelSmall?.fontSize)),
          // Text in a Container
          WidgetWithTextItem(
            widgetName: 'Text in a FilledButton',
            child: Wrap(
              runSpacing: 8,
              spacing: 8,
              children: [
                FilledButton.tonal(
                    onPressed: () {},
                    child: Text('FilledButton.tonal',
                        style: GoogleFonts.getFont(widget.font))),
                FilledButton.tonalIcon(
                    onPressed: () {},
                    icon: const Icon(Icons.add_chart_outlined),
                    label: Text('FilledButton.tonalIcon',
                        style: GoogleFonts.getFont(widget.font))),
                FilledButton(
                    onPressed: () {},
                    child: Text('FilledButton',
                        style: GoogleFonts.getFont(widget.font))),
                FilledButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.mail_outline_rounded),
                    label: Text('FilledButton.icon',
                        style: GoogleFonts.getFont(widget.font))),
              ],
            ),
          ),

          // Text in a ElevatedButton
          WidgetWithTextItem(
            widgetName: 'Text in a ElevatedButton',
            child: Wrap(
              runSpacing: 8,
              spacing: 8,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text('ElevatedButton',
                        style: GoogleFonts.getFont(widget.font))),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outline),
                    label: Text('ElevatedButton.icon',
                        style: GoogleFonts.getFont(widget.font))),
              ],
            ),
          ),

          // Text in a TextButton
          WidgetWithTextItem(
            widgetName: 'Text in a TextButton',
            child: Wrap(
              runSpacing: 8,
              spacing: 8,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text('TextButton',
                        style: GoogleFonts.getFont(widget.font))),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add_alert_outlined),
                    label: Text('TextButton.icon',
                        style: GoogleFonts.getFont(widget.font))),
              ],
            ),
          ),
          // Text in a TextButton
          WidgetWithTextItem(
            widgetName: 'Text in a Chip',
            child: Wrap(
              runSpacing: 8,
              spacing: 8,
              children: [
                ActionChip(
                    onPressed: () {},
                    label: Text('ActionChip',
                        style: GoogleFonts.getFont(widget.font))),
                ChoiceChip(
                  onSelected: (select) {},
                  label: Text('ChoiceChip',
                      style: GoogleFonts.getFont(widget.font)),
                  selected: true,
                ),
                ChoiceChip(
                  onSelected: (select) {},
                  label: Text('ChoiceChip',
                      style: GoogleFonts.getFont(widget.font)),
                  selected: false,
                ),
                InputChip(
                  onSelected: (select) {},
                  label: Text('InputChip',
                      style: GoogleFonts.getFont(widget.font)),
                  selected: false,
                ),
                FilterChip(
                  onSelected: (select) {},
                  label: Text('TextButton.icon',
                      style: GoogleFonts.getFont(widget.font)),
                  selected: false,
                ),
              ],
            ),
          ),
          // Text in a TextField
          WidgetWithTextItem(
              widgetName: 'Text in a TextButton',
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'hintText',
                  hintStyle: GoogleFonts.getFont(widget.font),
                  label: const Text('label'),
                  labelStyle: GoogleFonts.getFont(widget.font),
                ),
              )),

          // Text in a DropdownButton
          WidgetWithTextItem(
            widgetName: 'Text in a DropdownButton',
            child: DropdownButton<String>(
              value: _selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue!;
                });
              },
              items: _options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: GoogleFonts.getFont(widget.font)),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class TextStyleItem extends StatelessWidget {
  final String styleName;
  final TextStyle? textStyle;

  const TextStyleItem({
    super.key,
    required this.styleName,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(styleName, style: textStyle),
    );
  }
}

class WidgetWithTextItem extends StatelessWidget {
  final String widgetName;
  final Widget child;

  const WidgetWithTextItem({
    super.key,
    required this.widgetName,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widgetName,
            style: context.theme.textTheme.titleSmall,
          ),
          8.height,
          child,
        ],
      ),
    );
  }
}
