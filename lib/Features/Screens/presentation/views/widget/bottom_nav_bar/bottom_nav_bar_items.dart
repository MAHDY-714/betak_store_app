import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

List<PersistentBottomNavBarItem> bottomNavBarItems(
  index,
  context,
) {
  return [
    persistentBottomNavBarItem(context, index,
        icon: AssetsImages.homeIcon, title: 'Home'),
    persistentBottomNavBarItem(context, index,
        icon: AssetsImages.myCartIcon, title: 'My Cart'),
    persistentBottomNavBarItem(context, index,
        icon: AssetsImages.productsIcon, title: 'Categories'),
    persistentBottomNavBarItem(context, index,
        icon: AssetsImages.profileIcon, title: 'Profile'),
  ];
}

PersistentBottomNavBarItem persistentBottomNavBarItem(
  context,
  index, {
  required String icon,
  required String title,
}) {
  double iconSize =
      kWidthCondtions(context, valueIsTrue: 20.0, valueIsFalse: 25.0);
  Color colorSelected = AppColor.itemSelectedInHomeBottomNavBar;
  Color colorUnSelected = AppColor.itemUnSelectedInHomeBottomNavBar;
  TextStyle titleStyle = TextStyles.textStyle10W60.copyWith(
    fontSize: kWidthCondtions(context, valueIsTrue: 17.0, valueIsFalse: 20.0),
  );
  double contentPadding =
      kWidthCondtions(context, valueIsTrue: 8.0, valueIsFalse: 6.0);
  const paddingend = 4.0;
  return PersistentBottomNavBarItem(
    activeColorPrimary: AppColor.sky4Color.withOpacity(.04), //hilight
    inactiveColorPrimary: colorUnSelected,
    inactiveColorSecondary: colorUnSelected,
    activeColorSecondary: colorSelected, // text
    opacity: .7,
    contentPadding: contentPadding,
    icon: Padding(
      padding: const EdgeInsetsDirectional.only(end: paddingend),
      child: Image.asset(
        icon,
        height: iconSize,
        width: iconSize,
        color: index == 1 ? colorSelected : colorUnSelected,
      ),
    ),
    textStyle: titleStyle,
    title: title,
  );
}
