import 'package:betak_store_app/Features/Screens/data/models/my_cart_data_model/item_info_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/cart_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/categories/categories_in_main_category_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/products_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/profiles/widget/screens_in_items/screens_in_items_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/screens_view.dart';
import 'package:betak_store_app/Features/registration/presentation/views/sign_in_view.dart';
import 'package:betak_store_app/core/styles/animation_transotions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Features/onboarding/presentations/views/onboarding_view.dart';
import '../../Features/registration/presentation/views/sign_up_view.dart';
import '../../Features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const kHomeView = '/HomeView';
  static const kOnboardingView = '/onboardingView';
  static const kSignUpView = '/signUpView';
  static const kSignInView = '/signInView';
  static const kProductDetailsView = '/ProductDetailsView';
  static const kRateDetails = '/RateDetails';
  static const kCategoriesInMainCategoryView = '/CategoriesInMainCategoryView';
  static const kProductsBodyView = '/ProductsBodyView';
  static const kCartBodyView = '/CartBodyView';
  static const kScreensInItemsBodyView = '/ScreensInItemsBodyView';
  static const kLogOutFromProfile = '/LogOutFromProfile';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: kOnboardingView,
      builder: (context, state) {
        return const OnboardingView();
      },
    ),
    GoRoute(
      path: kSignUpView,
      builder: (context, state) {
        return const SignUpView();
      },
    ),
    GoRoute(
      path: kSignInView,
      builder: (context, state) {
        return const SignInView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) {
        return const ScreensView();
      },
    ),
    GoRoute(
      path: kProductDetailsView,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: ProductDetailsView(
            // productInfoInMyCartModel: state.extra as ProductInfoInMyCartModel,
          ),
          transitionDuration: const Duration(seconds: 2),
          barrierDismissible: true,
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return CustomPageTranstionAnimations.slideTransitionBottomToTop(
              context,
              animation,
              secondaryAnimation,
              child,
              widget: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: kCategoriesInMainCategoryView,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: CategoriesInMainCategoryView(
            indexCategories: state.extra as int,
            // image: state.extra as String,
          ),
          transitionDuration: const Duration(seconds: 2),
          barrierDismissible: true,
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return CustomPageTranstionAnimations.slideTransitionLeftToRight(
              context,
              animation,
              secondaryAnimation,
              child,
              widget: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: kProductsBodyView,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: Scaffold(
              body: ProductsBodyView(
            title: state.extra as String,
          )),
          transitionDuration: const Duration(seconds: 2),
          barrierDismissible: true,
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return CustomPageTranstionAnimations.slideTransitionLeftToRight(
              context,
              animation,
              secondaryAnimation,
              child,
              widget: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: kCartBodyView,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: Scaffold(
            body: CartBodyView(
              productInfoInMyCartModel: state.extra as ProductInfoInMyCartModel,
            ),
          ),
          transitionDuration: const Duration(seconds: 2),
          barrierDismissible: true,
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return CustomPageTranstionAnimations.slideTransitionBottomToTop(
              context,
              animation,
              secondaryAnimation,
              child,
              widget: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: kScreensInItemsBodyView,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: Scaffold(
              body: ScreensInItemsBodyView(
            title: state.extra as String,
          )),
          transitionDuration: const Duration(seconds: 2),
          barrierDismissible: true,
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return CustomPageTranstionAnimations.slideTransitionLeftToRight(
              context,
              animation,
              secondaryAnimation,
              child,
              widget: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: kLogOutFromProfile,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const SignInView(),
          transitionDuration: const Duration(seconds: 2),
          barrierDismissible: true,
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return CustomPageTranstionAnimations.slideTransitionLeftToRight(
              context,
              animation,
              secondaryAnimation,
              child,
              widget: child,
            );
          },
        );
      },
    ),
  ]);
}
