import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageTransition<T> extends CustomTransitionPage<T> {
  PageTransition({
    required LocalKey super.key,
    required super.child,
  }) : super(
          transitionDuration: const Duration(
              milliseconds: 250), // Customize the duration as needed
          reverseTransitionDuration: const Duration(
              milliseconds:
                  250), // Duration for fade-out effect when navigating back
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              // Use secondaryAnimation for fade-out when navigating back
              opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
              child: FadeTransition(
                opacity: Tween<double>(begin: 1.0, end: 0.0)
                    .animate(secondaryAnimation),
                child: child,
              ),
            );
          },
        );
}
