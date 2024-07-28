import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageInOnboarding extends StatefulWidget {
  ImageInOnboarding({
    super.key,
    required this.alignmentValue,
    required this.image,
    required this.animationController,
  });
  final double alignmentValue;
  final String image;
  AnimationController animationController;

  @override
  State<ImageInOnboarding> createState() => _ImageInOnboardingState();
}

class _ImageInOnboardingState extends State<ImageInOnboarding>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.animationController,
        builder: (context, _) {
          return AnimatedOpacity(
            opacity: widget.animationController.value,
            duration: Duration(
                seconds: widget.animationController.duration!.inSeconds),
            child: Align(
              alignment: Alignment(widget.alignmentValue, 0),
              child: Container(
                height: 190,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      widget.image,
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
