import 'package:flutter/material.dart';

class AppColor {
  AppColor._();
  static const backgroundColor1 = [
    Color(0xFF013571),
    Color(0xFF013571),
    Color(0xFF2476D4),
    Color(0xFF013571),
    Color(0xFF013571),
  ];
  static const splashViewLogoBackgroundColor = [
    Color(0xFF013571),
    Color(0xFF519AEE),
  ];
  static const textSplashViewColor = [
    Colors.white,
    Colors.white,
    Color(0xFF4992E5),
    Color(0xFF013571),
  ];
  static const titleOnboardingColor = Color(0xFF00A78E);
  static const nextButtonInOnboardingColor = Color(0xFF00D4B4);
  static const pointIndecatorInOnboardingColor = Color(0xFF00D4B4);

  static const titlesOnboardingColors = [
    Color(0xFFB43038),
    Color(0xff03EB97),
    Color(0xff5693EB),
  ];

  static const linerGredentColor1 = LinearGradient(
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
    colors: backgroundColor1,
  );
  static const registerationButtonlinerGredentColor1 = LinearGradient(
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
    colors: [
      Color(0xFFB7C5EC),
      Color(0xFFB2C0E5),
      Color(0xFFB2C0E5),
    ],
  );

  //in text Singing
  static const borderLogoSign = Color(0xC1FFFAFA);
  static const errorBorderAndRemoveAndIcons = Color(0xFF901313);
  static const focusederrorBorderAndRemove = Color(0xFFD10404);
  static const logoBackgoundColor = Colors.black12;
  static const itemSelectedInHomeBottomNavBar = Color(0xB3FFFFFF);
  static const itemUnSelectedInHomeBottomNavBar = Color(0x61FFFFFF);
  static const backgroundLayer2 = Color(0xff040813);
  static const backgroundImageWhiteColor = Color(0xFFF2F2F2); //0xFFF2F2F2
  static const backgroundForAllItemsRedColor = Color(0xFFB90000);
  static const backgroundForAllItemsInProductDarkColor = Color(0xFF0C0F19);
  static const redDeepColor = Color(0xFF700606);
  static const blueDarkColor = Color(0xFF000C2C);
  static const blueColor = Color(0xFF013571);
  static const orangeColor = Color(0xFFFF6600);
  static const yellow2Color = Color(0xFFFEA100);
  static const yellowColor = Color(0xFFFFD700);
  static const amberColor = Color(0xFFF1A84E);
  static const greenColor = Color(0xFF08B50E);
  static const green2Color = Color(0x9F08B50E);
  static const green3Color = Color(0xFF006604);
  static const greyColor = Color(0xFF1D202B);
  // static Color skyColorWithOpacity = const Color(0xFFB2C0E5).withOpacity(.4);
  static Color skyLightColor = const Color(0xFF323644);
  static const skyColor = Color(0xFFB2C0E5);
  static const sky2Color = Color(0xFFA2C7FB);
  static const sky3Color = Color(0xFF4F83CD);
  static const sky4Color = Color(0xFF03A2CE);
}
