import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentations/manager/nav_bar_manager/nav_bar_cubit/nav_bar_cubit.dart';
import '../../../presentations/views/cart/cart_body_view.dart';
import '../../../presentations/views/categories/categories_body_view.dart';
import '../../../presentations/views/home/home_body_view.dart';
import '../../../presentations/views/products/products_body_view.dart';
import '../../../presentations/views/profiles/profile_body_view.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(HomeInitialState());
  List<Widget> screens = [
    const HomeBodyView(),
    const ProductsBodyView(),
    const CartBodyView(),
    const CategoriesBodyView(),
    const ProfileBodyView(),
  ];

  Widget? widget;

  int currentScreen = 0;

  void bottomNavBarScreen(index) {
    currentScreen = index;

    switch (currentScreen) {
      case 0:
        widget = screens[0];
        log('home 0');
        break;
      case 1:
        widget = screens[1];
        log('home 1');
        break;
      case 2:
        widget = screens[2];
        log('home 2');
        break;
      case 3:
        widget = screens[3];
        log('home 3');
        break;
      case 4:
        widget = screens[4];
        log('home 4');
        break;
    }
    log(currentScreen.toString());
    log(index.toString());
    emit(HomeChangeNavBarState());
  }
}
