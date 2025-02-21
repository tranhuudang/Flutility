import 'package:flutility/src/core/core.dart';
import 'package:flutility/src/presentation/presentation.dart';
import 'package:flutter/material.dart';

class SeeMoreSection extends StatefulWidget {
  final Widget title;
  final Widget subtitle;
  final List<Widget>? children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final VoidCallback? onTap;
  final bool? isExpand;
  const SeeMoreSection(
      {super.key,
      required this.children,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.onTap,
      this.isExpand = false,
      required this.subtitle,
      required this.title});

  @override
  State<SeeMoreSection> createState() => _SeeMoreSectionState();
}

class _SeeMoreSectionState extends State<SeeMoreSection> {
  late bool isExpand;

  @override
  void initState() {
    super.initState();
    isExpand = widget.isExpand!;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.only(left: .5, right: .5, bottom: 4),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color:
                  context.theme.colorScheme.surfaceContainerLow.withOpacity(.0),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        widget.title,
                        Opacity(opacity: .5, child: widget.subtitle),
                        if (widget.children != null)
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpand = !isExpand;
                                });
                              },
                              child: isExpand
                                  ? Text(
                                      'Collapse'.i18n,
                                    )
                                  : Text('See more'.i18n),
                            ),
                          )
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: widget.onTap, icon: const Icon(Icons.copy_rounded))
                ]),
          ),
          AnimatedCrossFade(
            firstChild: Container(),
            secondChild: Padding(
              padding: const EdgeInsets.only(right: 0, bottom: 16, left: 0),
              child: GestureDetector(
                onTap: widget.onTap,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      thickness: .3,
                      height: 1,
                    ),
                    16.height,
                    if (widget.children != null) ...widget.children!
                  ],
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
