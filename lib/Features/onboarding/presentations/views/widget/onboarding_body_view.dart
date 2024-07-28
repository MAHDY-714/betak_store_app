import 'package:betak_store_app/Features/onboarding/presentations/views/widget/page_onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/styles/app_color.dart';
import '../../../../../core/utils/constanse.dart';
import '../../../data/onboarding_list_model.dart';
import '../../manager/onboarding_animation_controllers.dart';
import '../../manager/onboarding_animations_methods.dart';
import '../../manager/onboarding_funcations.dart';
import 'indecator_row_in_onboarding.dart';

class OnboardingBodyView extends StatefulWidget {
  const OnboardingBodyView({super.key});

  @override
  State<OnboardingBodyView> createState() => _OnboardingBodyViewState();
}

class _OnboardingBodyViewState extends State<OnboardingBodyView>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    OnboardingAnimationsMethods.initAnimation(vsync: this);

    setState(() {});
  }

  @override
  void dispose() {
    OnboardingAnimationsMethods.disposeAnimation();
    super.dispose();
  }

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context),
      width: kWidth(context),
      decoration: const BoxDecoration(
        gradient: AppColor.linerGredentColor1,
      ),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: OnboardingControllers.pageController,
              allowImplicitScrolling: false,
              onPageChanged: (page) {
                currentPage = page;
                setState(() {
                  OnboardingFunctions.nameButtonMethod(page);
                });
              },
              itemCount: OnboardingData.onboardingListData.length,
              itemBuilder: (context, index) {
                return PageOnboardingItem(
                  onboardingItemDataModel:
                      OnboardingData.onboardingListData[index],
                  animationController2:
                      OnboardingControllers.image2AnimationController,
                  index: index,
                );
              },
            ),
          ),
          IndecatorRow(
            pageController: OnboardingControllers.pageController,
            currentPage: currentPage,
            onTap: () => setState(
              () {
                OnboardingAnimationsMethods.indecatorAnimated(
                  context,
                  currentPage: currentPage,
                  pageController: OnboardingControllers.pageController,
                );
              },
            ),
            nameButton: OnboardingFunctions.nameButtonMethod(currentPage),
          ),
        ],
      ),
    );
  }
}
