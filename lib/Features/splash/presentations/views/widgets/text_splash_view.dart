import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../../core/styles/app_color.dart';
import '../../../../../core/styles/text_styles.dart';

class TextSplashView extends StatefulWidget {
  const TextSplashView({
    super.key,
  });

  @override
  State<TextSplashView> createState() => _TextSplashViewState();
}

class _TextSplashViewState extends State<TextSplashView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedTextKit(
            totalRepeatCount: 0,
            isRepeatingAnimation: false,
            animatedTexts: [
              ColorizeAnimatedText(
                'BETAK - STORE',
                textStyle: TextStyles.textSplashViewStyle,
                speed: const Duration(milliseconds: 300),
                colors: AppColor.textSplashViewColor,
              ),
            ]),
      ],
    );
  }
}
