import 'dart:async';
import 'package:flutter_toolkits/src/presentation/presentation.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter/services.dart';

class SearchBox extends StatefulWidget {
  final Function(String) onSubmitted;
  final Function(String)? onChanged;
  final bool? enabled;
  final String? hintText;
  final VoidCallback? onTextFieldTap;
  final TextEditingController? searchTextController;
  final bool? enableCamera;
  final bool autofocus;
  final bool showToolbox;
  final Widget? prefixIcon;
  final List<Widget> toolboxChildren;
  final int maxLines;
  final Color? textColor;
  final Color? iconColor;
  final Color? hintTextColor;
  final Color? fillColor;
  final Color? borderColor;
  final ContentInsertionConfiguration? contentInsertionConfiguration;

  const SearchBox(
      {super.key,
      required this.onSubmitted,
      this.onChanged,
      this.enabled = true,
      this.hintText,
      this.prefixIcon,
      this.enableCamera = true,
      this.searchTextController,
      this.onTextFieldTap,
      this.autofocus = false,
      this.showToolbox = false,
      this.toolboxChildren = const [],
      this.contentInsertionConfiguration,
      this.maxLines = 3,
      this.fillColor,
      this.borderColor,
      this.textColor,
      this.hintTextColor,
      this.iconColor});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final _closeTextFieldController = StreamController<bool>();
  final _defaultSearchTextController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  late final _newFocusNote =
      FocusNode(onKeyEvent: (FocusNode node, KeyEvent event) {
    if (event is KeyDownEvent) {
      if (event.physicalKey == PhysicalKeyboardKey.enter &&
          !HardwareKeyboard.instance.isShiftPressed) {
        _onSubmitted();
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _closeTextFieldController.close();
    _defaultSearchTextController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  _onSubmitted() {
    final usedController =
        widget.searchTextController ?? _defaultSearchTextController;
    widget.onSubmitted(usedController.text);
    _closeTextFieldController.add(false);
  }

  bool _isToolExpand = false;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: _closeTextFieldController.stream,
      initialData: false,
      builder: (context, showCloseButton) {
        return Row(
          children: [
            if (widget.showToolbox)
              IconRow(
                isExpanded: _isToolExpand,
                onExpand: () {
                  setState(() {
                    _isToolExpand = !_isToolExpand;
                  });
                },
                children: widget.toolboxChildren,
              ),
            Expanded(
              child: Stack(
                children: [
                  /// Input box
                  GestureDetector(
                    onTap: () {
                      widget.onTextFieldTap?.call();
                    },
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      focusNode: _newFocusNote,
                      contentInsertionConfiguration:
                          widget.contentInsertionConfiguration,
                      keyboardType: TextInputType.multiline,
                      autofocus: widget.autofocus,
                      enabled: widget.enabled,
                      minLines: 1,
                      maxLines: widget.maxLines,
                      controller: widget.searchTextController ??
                          _defaultSearchTextController,
                      onChanged: (currentValue) {
                        widget.onChanged != null
                            ? widget.onChanged!(currentValue)
                            : null;
                        // Whether to show close button or not
                        if (currentValue == '') {
                          _closeTextFieldController.add(false);
                        } else {
                          _closeTextFieldController.add(true);
                        }
                        if (_isToolExpand == true) {
                          setState(() {
                            _isToolExpand = !_isToolExpand;
                          });
                        }
                      },
                      onSubmitted: (text) {
                        _onSubmitted();
                      },
                      decoration: InputDecoration(
                          iconColor: widget.iconColor ??
                              context.theme.colorScheme.onSecondaryContainer,
                          fillColor: widget.fillColor ??
                              context.theme.colorScheme.secondaryContainer,
                          filled: true,
                          prefixIcon: widget.prefixIcon,
                          contentPadding: const EdgeInsets.only(
                              left: 16, right: 50, top: 8, bottom: 8),
                          hintText: widget.hintText,
                          hintStyle: context.theme.textTheme.bodyMedium
                              ?.copyWith(
                                  color: widget.hintTextColor ??
                                      context.theme.colorScheme
                                          .onSecondaryContainer),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: widget.borderColor ??
                                    context
                                        .theme.colorScheme.secondaryContainer),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32)),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: widget.borderColor ??
                                    context
                                        .theme.colorScheme.secondaryContainer),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: widget.borderColor ??
                                    context
                                        .theme.colorScheme.secondaryContainer),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: widget.borderColor ??
                                    context
                                        .theme.colorScheme.secondaryContainer),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32)),
                          ),
                          suffixIcon: showCloseButton.data!
                              ? IconButton(
                                  onPressed: () {
                                    _onSubmitted();
                                  },
                                  icon: Icon(
                                    Icons.send,
                                    color: widget.iconColor ??
                                        context.theme.colorScheme
                                            .onSecondaryContainer,
                                  ),
                                )
                              : null),
                    ),
                  ),

                  /// Micro button
                  if (isAndroid)
                    if (!showCloseButton.data!)
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            4.width,
                            // todo: re-open micro function when necessary, currently buggy as it not stop as intended
                            // IconButton(
                            //   onPressed: () {
                            //     showDialog(context: context,
                            //       builder: (context) => VoiceListeningBottomSheet(
                            //         onSubmit: (speechResult) {
                            //           widget.onSubmitted(speechResult);
                            //         },
                            //       ),
                            //     );
                            //   },
                            //   icon: const Icon(Icons.mic_none),
                            // ),
                          ],
                        ),
                      ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class IconRow extends StatefulWidget {
  final bool isExpanded;
  final List<Widget> children;
  final VoidCallback onExpand;

  const IconRow({
    super.key,
    required this.isExpanded,
    required this.onExpand,
    required this.children,
  });

  @override
  State<IconRow> createState() => _IconRowState();
}

class _IconRowState extends State<IconRow> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    if (widget.isExpanded) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(IconRow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isExpanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: widget.onExpand,
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            child: widget.isExpanded
                ? const Icon(
                    Icons.chevron_left,
                    key: ValueKey(Icons.chevron_left),
                  )
                : const Icon(
                    Icons.add_circle_outline,
                    key: ValueKey(Icons.add_circle_outline),
                  ),
            transitionBuilder: (child, animation) {
              return RotationTransition(
                turns: child.key == const ValueKey(Icons.add_circle_outline)
                    ? Tween<double>(begin: 0.15, end: 0).animate(animation)
                    : Tween<double>(begin: 0.75, end: 1).animate(animation),
                child: ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              );
            },
          ),
        ),
        SizeTransition(
          sizeFactor: _animation,
          axis: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: widget.children,
          ),
        ),
      ],
    );
  }
}
