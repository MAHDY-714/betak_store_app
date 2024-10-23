import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../views/cart/cart_body_view.dart';
import '../../../views/categories/categories_body_view.dart';
import '../../../views/home/home_body_view.dart';
import '../../../views/profiles/profile_body_view.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(InitialState());
  int currentScreen = 0;

  List<Widget> pages = [
    const HomeBodyView(),
    const CartBodyView(),
    const CategoriesBodyView(),
    const ProfileBodyView(),
  ];

  Widget? widget;
  void bottomNavBarScreen(
    index,
    context,
  ) {
    currentScreen = index;
    switch (currentScreen) {
      case 0:
        widget = pages[0];
        log('home 0');
        break;
      case 1:
        widget = pages[1];
        log('home 1');
        break;
      case 2:
        widget = pages[2];
        log('home 2');
        break;
      case 3:
        widget = pages[3];
        log('home 3');
        break;
      default:
        widget = pages[0];
    }

    log(currentScreen.toString());
    log(index.toString());
    emit(ChangeNavBarState());
  }
}
