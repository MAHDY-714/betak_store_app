import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavBarItems(
  index,
) {
  double height = 25;
  double width = 25;
  Color colorSelected = AppColor.itemSelectedInHomeBottomNavBar;
  Color colorUnSelected = AppColor.itemUnSelectedInHomeBottomNavBar;
  return [
    BottomNavigationBarItem(
      icon: Image.asset(
        AssetsImages.homeIcon,
        height: height,
        width: width,
        color: index == 0 ? colorSelected : colorUnSelected,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AssetsImages.productsIcon,
        height: height,
        width: width,
        color: index == 1 ? colorSelected : colorUnSelected,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AssetsImages.myCartIcon,
        height: height,
        width: width,
        color: index == 2 ? colorSelected : colorUnSelected,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AssetsImages.categoriesIcon,
        height: height,
        width: width,
        color: index == 3 ? colorSelected : colorUnSelected,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AssetsImages.profileIcon,
        height: height,
        width: width,
        color: index == 4 ? colorSelected : colorUnSelected,
      ),
    ),
  ];
}
