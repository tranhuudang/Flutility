import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutility/src/core/core.dart';

class HighlightedText extends StatefulWidget {
  final String text;
  final Color highlightedColor;
  final Color onHighlightedColor;
  final Color? color;

  const HighlightedText({
    super.key,
    required this.text,
    required this.highlightedColor,
    required this.onHighlightedColor,
    this.color,
  });

  @override
  State<HighlightedText> createState() => _HighlightedTextState();
}

class _HighlightedTextState extends State<HighlightedText> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _getSpans(widget.text),
    );
  }

  List<Widget> _getSpans(String text) {
    final List<Widget> spans = [];
    final regex = RegExp(r'(`)(.*?)`');
    int lastMatchEnd = 0;

    for (final match in regex.allMatches(text)) {
      // Handling text before the current match
      if (match.start > lastMatchEnd) {
        final textBeforeMatch = text.substring(lastMatchEnd, match.start);
        // Iterate through each character in textBeforeMatch
        for (int i = 0; i < textBeforeMatch.length; i++) {
          spans.add(Text(
            textBeforeMatch[i],
            style:
                TextStyle(color: widget.color), // Use provided color or default
          ));
        }
      }
      spans.add(
        Container(
          decoration: BoxDecoration(
              color: widget.highlightedColor,
              borderRadius: BorderRadius.circular(5),
              border: Border.all()),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: InkWell(
              onTap: () {
                Clipboard.setData(
                  ClipboardData(text: match.group(2) ?? ''),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Copied to clipboard'.i18n),
                  ),
                );
              },
              child: Text(
                match.group(2) ?? '',
                style: TextStyle(color: widget.onHighlightedColor),
              ),
            ),
          ),
        ),
      );

      lastMatchEnd = match.end;
    }

    // Handling remaining text after the last match
    if (lastMatchEnd < text.length) {
      final remainingText = text.substring(lastMatchEnd);
      for (int i = 0; i < remainingText.length; i++) {
        spans.add(Text(
          remainingText[i],
          style: TextStyle(
              color: widget.color), // Use default color or provided color
        ));
      }
    }
    return spans;
  }
}
