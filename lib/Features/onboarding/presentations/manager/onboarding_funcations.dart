import 'package:betak_store_app/core/utils/app_router.dart';
import 'package:betak_store_app/core/utils/cache_helper.dart';
import 'package:go_router/go_router.dart';

class OnboardingFunctions {
  static String nameButtonMethod(int currentPage) {
    if (currentPage != 2) {
      return 'Next';
    } else {
      return 'Sign Up';
    }
  }

  static skipOnboarding(context) {
    CacheHelper.saveData(key: 'onboarding', value: true).then((value) {
      if (value == true) {
        GoRouter.of(context).pushReplacement(AppRouter.kSignUpView);
      }
    });
  }
}
