import 'package:flutility/src/core/core.dart';
import 'package:flutility/src/presentation/presentation.dart';
import 'package:flutter/material.dart';

class Section extends StatefulWidget {
  final String title;
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final VoidCallback? onTap;
  final bool? isExpand;
  const Section(
      {super.key,
      this.title = '',
      required this.children,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.onTap,
      this.isExpand = true});

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  late bool isExpand;

  @override
  void initState() {
    super.initState();
    isExpand = widget.isExpand!;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: .5, right: .5, bottom: 4),
      child: Column(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              
              onTap: () {
                setState(() {
                  isExpand = !isExpand;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: context.theme.colorScheme.surfaceContainerLow
                      .withOpacity(.0),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.title != '') ...[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.title,
                            style: context.theme.textTheme.titleMedium?.copyWith(
                                color: context.theme.colorScheme.primary),
                          ),
                        ),
                        isExpand
                            ? Icon(
                                Icons.keyboard_arrow_up,
                                color: context.theme.colorScheme.onSurface
                                    .withOpacity(.5),
                              )
                            : const Icon(Icons.keyboard_arrow_down)
                      ],
                    ]),
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Container(),
            secondChild: Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 16, left: 16),
              child: GestureDetector(
                onTap: widget.onTap,
                child: Column(
                  crossAxisAlignment: widget.crossAxisAlignment,
                  mainAxisAlignment: widget.mainAxisAlignment,
                  children: widget.children,
                ),
              ),
            ),
            crossFadeState:
                isExpand ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 300),
          ),
        ],
      ),
    );
  }
}
