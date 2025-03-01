import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../../../../app/app.dart';


class HorizontalScrollView extends StatefulWidget {
  final Widget child;

  const HorizontalScrollView({super.key, required this.child});

  @override
  State<HorizontalScrollView> createState() => _HorizontalScrollViewState();
}

class _HorizontalScrollViewState extends State<HorizontalScrollView> {
  final ScrollController _scrollController = ScrollController();

  void _handlePointerSignal(PointerSignalEvent event) {
    if (event is PointerScrollEvent) {
      final delta = event.scrollDelta.dy;
      const scrollSensitivity = .5;

      final newOffset = _scrollController.offset + delta * scrollSensitivity;

      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      final minScrollExtent = _scrollController.position.minScrollExtent;

      if (newOffset >= maxScrollExtent) {
        _scrollController.jumpTo(maxScrollExtent);
      } else if (newOffset <= minScrollExtent) {
        _scrollController.jumpTo(minScrollExtent);
      } else {
        _scrollController.jumpTo(newOffset);
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isWindows
        ? Listener(
      onPointerSignal: _handlePointerSignal,
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: widget.child,
      ),
    )
        : SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      child: widget.child,
    );
  }
}
