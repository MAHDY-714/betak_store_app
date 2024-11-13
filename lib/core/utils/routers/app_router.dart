import 'package:betak_store_app/Features/Screens/data/models/specifications_info_model/specifications_info_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/my_cart_manager/my_cart_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/cart_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/categories/categories_in_main_category_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/categories/widget/products_in_main_category/products_in_main_category_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/rating_and_reviews/rating_and_reviews_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part6/specifications_table_info.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/profiles/widget/screens_in_items/screens_in_items_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/screens_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/search/search_body_view.dart';
import 'package:betak_store_app/Features/registration/presentation/views/sign_in_view.dart';
import 'package:betak_store_app/core/utils/routers/app_router_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../Features/onboarding/presentations/views/onboarding_view.dart';
import '../../../Features/registration/presentation/views/sign_up_view.dart';
import '../../../Features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const kHomeView = '/HomeView';
  static const kOnboardingView = '/onboardingView';
  static const kSignUpView = '/signUpView';
  static const kSignInView = '/signInView';
  static const kProductDetailsView = '/ProductDetailsView';
  static const kRatingAndReviewsView = '/RatingAndReviewsView';
  static const kSpecificationsTableInfoViewCertifications =
      '/SpecificationsTableViewCertifications';
  static const kSpecificationsTableInfoViewDetails =
      '/SpecificationsTableInfoViewDetails';
  static const kSpecificationsTableInfoViewDimentions =
      '/DSpecificationsTableViewDimentions';
  static const kCategoriesInMainCategoryView = '/CategoriesInMainCategoryView';
  static const kProductsBodyView = '/ProductsBodyView';
  static const kCartBodyView = '/CartBodyView';
  static const kScreensInItemsBodyView = '/ScreensInItemsBodyView';
  static const kLogOutFromProfile = '/LogOutFromProfile';
  static const kSearchBodyView = '/SearchBodyView';
  static final router = GoRouter(
    routes: [
      /**with Transition bottom to top**/
      //*-SplashView
      AppRouterMethod.goRouteWithTransitionBottomToTop(
        child: (GoRouterState state) {
          return const SplashView();
        },
        path: '/',
      ),

      //*-ScreensView
      AppRouterMethod.goRouteWithTransitionBottomToTop(
        child: (GoRouterState state) {
          return const ScreensView();
        },
        path: kHomeView,
      ),

      //*-ProductDetailsView
      AppRouterMethod.goRouteWithTransitionBottomToTop(
        child: (GoRouterState state) {
          return ProductDetailsView(productModel: state.extra as ProductModel);
        },
        path: kProductDetailsView,
      ),

      //*-RatingAndReviewsView
      AppRouterMethod.goRouteWithTransitionBottomToTop(
        child: (GoRouterState state) {
          return Scaffold(
              body: RatingAndReviewsView(
            productModel: state.extra as ProductModel,
          ));
        },
        path: kRatingAndReviewsView,
      ),

      //*-CartBodyView
      AppRouterMethod.goRouteWithTransitionBottomToTop(
        child: (GoRouterState state) {
          return BlocProvider(
            create: (BuildContext context) => MyCartCubit(),
            child: const Scaffold(
              body: CartBodyView(
                // myCartModel: state.extra as MyCartModel,
              ),
            ),
          );
        },
        path: kCartBodyView,
      ),

      //*-SearchBodyView
      AppRouterMethod.goRouteWithTransitionBottomToTop(
        child: (GoRouterState state) {
          return SearchBodyView();
        },
        path: kSearchBodyView,
      ),

      //*details
      AppRouterMethod.goRouteWithTransitionBottomToTop(
        child: (GoRouterState state) {
          return SpecificationsTableInfoView(
              specificationsInfoModel: state.extra as SpecificationsInfoModel);
        },
        path: kSpecificationsTableInfoViewDetails,
      ),

      /**with Transition left to right**/
      //*-OnboardingView
      AppRouterMethod.goRouteWithTransitionLeftToRight(
        child: (GoRouterState state) {
          return const OnboardingView();
        },
        path: kOnboardingView,
      ),

      //*-SignUpView
      AppRouterMethod.goRouteWithTransitionLeftToRight(
        child: (GoRouterState state) {
          return const SignUpView();
        },
        path: kSignUpView,
      ),

      //*-SignInView
      AppRouterMethod.goRouteWithTransitionLeftToRight(
        child: (GoRouterState state) {
          return const SignInView();
        },
        path: kSignInView,
      ),

      //*-OnboardingView
      AppRouterMethod.goRouteWithTransitionLeftToRight(
        child: (GoRouterState state) {
          return Scaffold(
              body: RatingAndReviewsView(
            productModel: state.extra as ProductModel,
          ));
        },
        path: kRatingAndReviewsView,
      ),

      //*-CategoriesInMainCategoryView
      AppRouterMethod.goRouteWithTransitionLeftToRight(
        child: (GoRouterState state) {
          return CategoriesInMainCategoryView(
            indexCategories: state.extra as int,
            // image: state.extra as String,
          );
        },
        path: kCategoriesInMainCategoryView,
      ),

      //*-ProductsInMainCategoryBodyView
      AppRouterMethod.goRouteWithTransitionLeftToRight(
        child: (GoRouterState state) {
          return Scaffold(
              body: ProductsInMainCategoryBodyView(
            title: state.extra as String,
          ));
        },
        path: kProductsBodyView,
      ),

      //*-ScreensInItemsBodyView
      AppRouterMethod.goRouteWithTransitionLeftToRight(
        child: (GoRouterState state) {
          return Scaffold(
              body: ScreensInItemsBodyView(
            title: state.extra as String,
          ));
        },
        path: kScreensInItemsBodyView,
      ),

      //*-certifications
      AppRouterMethod.goRouteWithTransitionLeftToRight(
        child: (GoRouterState state) {
          return SpecificationsTableInfoView(
              specificationsInfoModel: state.extra as SpecificationsInfoModel);
        },
        path: kSpecificationsTableInfoViewCertifications,
      ),

      /**with Transition right to Left**/
      //*-kLogOutFromProfile
      AppRouterMethod.goRouteWithTransitionRightToLeft(
        child: (GoRouterState state) {
          return const SignInView();
        },
        path: kLogOutFromProfile,
      ),

      //*-Dimentions
      AppRouterMethod.goRouteWithTransitionRightToLeft(
        child: (GoRouterState state) {
          return SpecificationsTableInfoView(
              specificationsInfoModel: state.extra as SpecificationsInfoModel);
        },
        path: kSpecificationsTableInfoViewDimentions,
      ),
    ],
  );
}
