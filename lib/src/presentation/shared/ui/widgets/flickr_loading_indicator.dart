import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class FlickrLoadingIndicator extends StatelessWidget {
  final double size;
  final String? content;
  const FlickrLoadingIndicator({
    super.key,
    this.size = 42,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        LoadingAnimationWidget.flickr(
            leftDotColor: Colors.teal,
            rightDotColor: Colors.white70,
            size: size),
        if (content != null) ...[8.height, Text(content!)],
      ]),
    );
  }
}
