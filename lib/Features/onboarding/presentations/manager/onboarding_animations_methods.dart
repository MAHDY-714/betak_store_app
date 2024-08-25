import 'dart:developer';

import 'package:flutter/material.dart';

import 'onboarding_animation_controllers.dart';
import 'onboarding_funcations.dart';

abstract class OnboardingAnimationsMethods {
  static void initAnimation({required vsync}) {
    OnboardingControllers.image1AnimationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 500),
    );

    OnboardingControllers.image2AnimationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 500),
    );
    OnboardingControllers.image1AnimationController.forward().whenComplete(() {
      log('this anmation for image1AnimationController is Complete');
      OnboardingControllers.image2AnimationController
          .forward()
          .whenComplete(() {
        log('this anmation for image2AnimationController is Complete');
      });
    });
  }

  static void disposeAnimation() {
    OnboardingControllers.image1AnimationController.dispose();
    OnboardingControllers.image2AnimationController.dispose();
  }

  static indecatorAnimated(
    context, {
    required currentPage,
    required PageController pageController,
  }) {
    pageController.nextPage(
      duration: const Duration(milliseconds: 700),
      curve: Curves.decelerate,
    );
    OnboardingFunctions.nameButtonMethod(currentPage);
    if (currentPage == 2) {
      if (currentPage == 2) {
        OnboardingFunctions.skipOnboarding(context);
      }
    }
  }
}
