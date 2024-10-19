import 'package:betak_store_app/Features/Screens/presentation/manager/nav_bar_manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/widget/bottom_nav_bar/bottom_nav_bar_items.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavBarView extends StatelessWidget {
  const BottomNavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController persistentTabController = PersistentTabController();
    var cubi = BlocProvider.of<NavBarCubit>(context);
    return BlocConsumer<NavBarCubit, NavBarState>(
        listener: (context, state) {},
        builder: (context, state) {
          return PersistentTabView(
            context,
            controller: persistentTabController,
            screens: cubi.pages,
            items: bottomNavBarItems(cubi.currentScreen, context),
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            hideNavigationBarWhenKeyboardAppears: true,
            // popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
            padding: const EdgeInsets.only(bottom: 0.0),
            backgroundColor: AppColor.backgroundLayer2,
            // bottomScreenMargin: 32.0,
            isVisible: true,
            animationSettings: const NavBarAnimationSettings(
              navBarItemAnimation: ItemAnimationSettings(
                duration: Duration(milliseconds: 800),
                curve: Curves.fastOutSlowIn,
              ),
              screenTransitionAnimation: ScreenTransitionAnimationSettings(
                animateTabTransition: true,
                duration: Duration(milliseconds: 800),
                screenTransitionAnimationType:
                    ScreenTransitionAnimationType.slide,
              ),
            ),
            confineToSafeArea: true,
            navBarHeight: 60.0,
            navBarStyle: NavBarStyle.style7,
          );
        });
  }
}
