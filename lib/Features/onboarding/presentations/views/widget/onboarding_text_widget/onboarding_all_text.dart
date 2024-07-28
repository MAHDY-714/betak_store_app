import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../../core/styles/app_color.dart';
import '../../../../../../core/styles/text_styles.dart';
import '../../../../data/models/onboarding_model.dart';
import 'onboarding_text.dart';

class OnboardingAllText extends StatelessWidget {
  const OnboardingAllText({
    super.key,
    required this.animationController,
    required this.onboardingItemDataModel,
    required this.currentPage,
  });
  final AnimationController animationController;
  final OnboardingItemDataModel onboardingItemDataModel;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          if (animationController.isCompleted) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 80,
                  child: OnboardingText(
                    text: onboardingItemDataModel.title,
                    style: TextStyles.titleOnboardingStyle.copyWith(
                      color: AppColor.titlesOnboardingColors[currentPage],
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 30,
                // ),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 7),
                  height: 165,
                  child: OnboardingText(
                    text: onboardingItemDataModel.description,
                    style: TextStyles.descriptionOnboardingStyle,
                  ),
                ),
              ],
            );
          } else {
            return const SizedBox(
              height: 20,
            );
          }
        });
  }
}
