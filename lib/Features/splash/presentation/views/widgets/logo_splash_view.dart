import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import '../../../../../core/styles/app_color.dart';
import '../../../../../core/utils/images.dart';

class LogoSplashView extends StatelessWidget {
  const LogoSplashView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      startDelay: const Duration(milliseconds: 100),
      glowColor: const Color(0xFF519AEE),
      glowShape: BoxShape.circle,
      animate: true,
      curve: Curves.linear,
      glowCount: 3,
      glowRadiusFactor: .4,
      child: Material(
        elevation: 10.0,
        shape: const CircleBorder(
          eccentricity: 1,
        ),
        color: const Color(0xFF519AEE),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF2476D4),
              width: 2,
            ),
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: AppColor.splashViewLogoBackgroundColor,
            ),
          ),
          child: Center(
            child: Image.asset(height: 85, AssetsImages.logo),
          ),
        ),
      ),
    );
  }
}
