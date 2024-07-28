import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class OnboardingText extends StatefulWidget {
  const OnboardingText({
    super.key,
    required this.text,
    required this.style,
  });

  final String text;
  final TextStyle style;
  @override
  State<OnboardingText> createState() => _OnboardingTextState();
}

class _OnboardingTextState extends State<OnboardingText> {
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      // displayFullTextOnTap: true,
      isRepeatingAnimation: false,
      animatedTexts: [
        TypewriterAnimatedText(
          widget.text,
          textStyle: widget.style,
          textAlign: TextAlign.start,
          speed: const Duration(milliseconds: 70),
          curve: Curves.linearToEaseOut,
          cursor: '🖋',
        ),
      ],
    );
  }
}
/*
Highest quality and best prices. There are the best models and brands in the world of home furniture and tools. There is everything you need.
 */