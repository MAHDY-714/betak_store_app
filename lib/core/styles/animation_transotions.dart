import 'package:flutter/material.dart';

class CustomPageTranstionAnimations {
  static SlideTransition slideTransitionLeftToRight(
      context, animation, secondaryAnimation, child,
      {required Widget widget}) {
    const begin = Offset(-1, 0);
    const end = Offset.zero;
    const curve = Curves.ease;

    final tween = Tween(begin: begin, end: end);
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: curve,
    );
    return SlideTransition(
      position: tween.animate(curvedAnimation),
      child: widget,
    );
  }

  static SlideTransition slideTransitionBottomToTop(
      context, animation, secondaryAnimation, child,
      {required Widget widget}) {
    const begin = Offset(0, 1);
    const end = Offset.zero;
    const curve = Curves.ease;

    final tween = Tween(begin: begin, end: end);
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: curve,
    );
    return SlideTransition(
      position: tween.animate(curvedAnimation),
      child: widget,
    );
  }
}
