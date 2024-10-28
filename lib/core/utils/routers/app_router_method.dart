import 'package:betak_store_app/core/styles/animation_transotions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouterMethod {
  static GoRoute goRoute({
    required Widget Function(GoRouterState state) child,
    required String path,
  }) {
    return GoRoute(
      path: path,
      builder: (context, state) {
        return child(state);
      },
    );
  }


  static GoRoute goRouteWithTransitionLeftToRight({
    required Widget Function(GoRouterState state) child,
    required String path,
  }) {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: child(state),
          transitionDuration: const Duration(seconds: 1),
          barrierDismissible: true,
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return CustomPageTranstionAnimations.slideTransitionLeftToRight(
              context,
              animation,
              secondaryAnimation,
              child,
              widget: child,
            );
          },
        );
      },
    );
  }

  static GoRoute goRouteWithTransitionRightToLeft({
    required Widget Function(GoRouterState state) child,
    required String path,
  }) {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: child(state),
          transitionDuration: const Duration(seconds: 1),
          barrierDismissible: true,
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return CustomPageTranstionAnimations.slideTransitionRightToLeft(
              context,
              animation,
              secondaryAnimation,
              child,
              widget: child,
            );
          },
        );
      },
    );
  }

  static GoRoute goRouteWithTransitionBottomToTop({
    required Widget Function(GoRouterState state) child,
    required String path,
  }) {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: child(state),
          transitionDuration: const Duration(seconds: 1),
          barrierDismissible: true,
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return CustomPageTranstionAnimations.slideTransitionBottomToTop(
              context,
              animation,
              secondaryAnimation,
              child,
              widget: child,
            );
          },
        );
      },
    );
  }

}
