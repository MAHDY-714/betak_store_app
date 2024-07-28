import 'package:flutter/material.dart';

import '../../../../../core/utils/constanse.dart';
import '../../../data/models/onboarding_model.dart';
import '../../manager/onboarding_animation_controllers.dart';
import 'image_in_onboarding.dart';
import 'onboarding_text_widget/onboarding_all_text.dart';

class PageOnboardingItem extends StatefulWidget {
  const PageOnboardingItem({
    super.key,
    required this.onboardingItemDataModel,
    required this.animationController2,
    required this.index,
  });
  final OnboardingItemDataModel onboardingItemDataModel;
  final AnimationController animationController2;

  final int index;
  @override
  State<PageOnboardingItem> createState() => _PageOnboardingItemState();
}

class _PageOnboardingItemState extends State<PageOnboardingItem>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: kHeight(context),
        width: kWidth(context),
        padding: const EdgeInsetsDirectional.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageInOnboarding(
              image: widget.onboardingItemDataModel.image1,
              alignmentValue: -1,
              animationController:
                  OnboardingControllers.image1AnimationController,
            ),
            const SizedBox(
              height: 20,
            ),
            ImageInOnboarding(
              image: widget.onboardingItemDataModel.image2,
              alignmentValue: 1,
              animationController: widget.animationController2,
            ),
            const Spacer(),
            OnboardingAllText(
              animationController:
                  OnboardingControllers.image2AnimationController,
              onboardingItemDataModel: widget.onboardingItemDataModel,
              currentPage: widget.index,
            ),
          ],
        ),
      ),
    );
  }
}
