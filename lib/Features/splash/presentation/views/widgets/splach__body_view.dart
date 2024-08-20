import 'package:betak_store_app/core/utils/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/styles/app_color.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/constanse.dart';
import 'logo_splash_view.dart';
import 'text_splash_view.dart';

class SplashBodyView extends StatefulWidget {
  const SplashBodyView({super.key});

  @override
  State<SplashBodyView> createState() => _SplashBodyViewState();
}

class _SplashBodyViewState extends State<SplashBodyView> {
  void navScreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (CacheHelper.getData(key: 'onboarding') != null) {
          if (CacheHelper.getData(key: 'uId') != null) {
            GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
          } else {
            GoRouter.of(context).pushReplacement(AppRouter.kSignUpView);
          }
        } else {
          GoRouter.of(context).pushReplacement(AppRouter.kOnboardingView);
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    navScreen();
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context),
      width: kWidth(context),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: AppColor.linerGredentColor1,
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LogoSplashView(),
          SizedBox(
            height: 40,
          ),
          TextSplashView(),
        ],
      ),
    );
  }
}
