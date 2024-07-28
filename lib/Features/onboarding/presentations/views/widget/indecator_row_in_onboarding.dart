import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/styles/app_color.dart';
import '../../../../../core/styles/text_styles.dart';
import '../../../../../core/utils/constanse.dart';
import '../../../data/onboarding_list_model.dart';

class IndecatorRow extends StatelessWidget {
  const IndecatorRow({
    super.key,
    required this.pageController,
    required this.currentPage,
    required this.onTap,
    required this.nameButton,
  });
  final PageController pageController;
  final int currentPage;
  final String nameButton;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: kWidth(context),
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 20,
        vertical: 6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmoothPageIndicator(
            controller: pageController,
            count: OnboardingData.onboardingListData.length,
            effect: ColorTransitionEffect(
              activeDotColor: AppColor.pointIndecatorInOnboardingColor,
              dotColor: Colors.white.withOpacity(.4),
              dotWidth: 24,
              dotHeight: 4,
              spacing: 8,
            ),
            onDotClicked: (index) {
              index = currentPage;
            },
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              nameButton,
              style: TextStyles.nextButtonInOnboardingStyle,
            ),
          )
        ],
      ),
    );
  }
}
