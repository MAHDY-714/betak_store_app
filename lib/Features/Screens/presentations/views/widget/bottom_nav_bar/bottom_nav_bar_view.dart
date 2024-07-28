import 'package:betak_store_app/Features/Screens/presentations/manager/nav_bar_manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/widget/bottom_nav_bar/bottom_nav_bar_items.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class BottomNavBarView extends StatelessWidget {
  const BottomNavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<NavBarCubit>(context);
    return BlocConsumer<NavBarCubit, NavBarState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SnakeNavigationBar.color(
          backgroundColor: AppColor.backgroundLayer2,
          currentIndex: cubi.currentScreen,
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.indicator,
          snakeViewColor: AppColor.itemSelectedInHomeBottomNavBar,
          items: bottomNavBarItems(cubi.currentScreen),
          onTap: (index) {
            cubi.bottomNavBarScreen(index);
          },
        );
      },
    );
  }
}
