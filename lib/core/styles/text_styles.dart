import 'package:betak_store_app/core/styles/font_family.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';

abstract class TextStyles {
  TextStyles._();
  static const textSplashViewStyle = TextStyle(
    color: Colors.white,
    fontSize: 17,
    letterSpacing: 10,
    fontFamily: FontFamily.orbitron900,
  );

  static const titleOnboardingStyle = TextStyle(
    color: AppColor.titleOnboardingColor,
    fontSize: 26,
    fontWeight: FontWeight.w900,
    height: 1.2,
  );
  static const nextButtonInOnboardingStyle = TextStyle(
    color: AppColor.nextButtonInOnboardingColor,
    fontSize: 18,
    fontFamily: FontFamily.bitter900,
    height: 1.2,
  );

  static const descriptionOnboardingStyle = TextStyle(
    color: Colors.white54,
    fontSize: 18,
    fontFamily: FontFamily.platypi700,
  );

  static const counterTextFieldStyle = TextStyle(
    color: Colors.white24,
    fontSize: 8,
    letterSpacing: 3,
    fontFamily: FontFamily.orbitron900,
  );
  //used in {textField & your save in price info in product details & use in counter number rate this product}
  static const hintTextStyle = TextStyle(
    color: Colors.white38,
    fontSize: 11,
    letterSpacing: 2,
    fontFamily: FontFamily.bitter100,
  );
//0xFFD5D6F3

  static const registerationTextButtonTextStyle = TextStyle(
    color: AppColor.blueColor,
    fontSize: 15,
    letterSpacing: 1,
    fontFamily: FontFamily.inter900,
    height: -.3,
  );

  static const toggleSign = TextStyle(
    color: Color(0xFFB7C5EC),
    height: 1.2,
    fontSize: 14,
    letterSpacing: 1,
    fontFamily: FontFamily.bitter500,
  );

  static const orAndReviewStyle = TextStyle(
    color: AppColor.sky2Color,
    fontSize: 12,
    letterSpacing: 2,
    fontFamily: FontFamily.bitter100,
  );

  static const searchInHome = TextStyle(
    color: Colors.black26,
    fontSize: 13,
    fontFamily: FontFamily.bitter300,
    height: .8,
  );

  static const nameAppTitileInLayer1 = TextStyle(
    color: Colors.white,
    fontSize: 13,
    letterSpacing: 10,
    fontFamily: FontFamily.orbitron900,
  );

  static const titilesInLayer2 = TextStyle(
    color: Color(0xFFF2F2F2),
    fontSize: 22,
    letterSpacing: 3,
    fontFamily: FontFamily.platypi600,
  );
  static const nameProductStyleInInLayer2 = TextStyle(
    fontSize: 10,
    color: AppColor.blueDarkColor,
    fontFamily: FontFamily.bitter900,
  );
  static const priceStyleInInLayer2 = TextStyle(
    color: AppColor.sky4Color,
    fontSize: 16,
    fontFamily: FontFamily.orbitron900,
  );

  ///used in {any discount widget}
  static const textDiscount = TextStyle(
    color: Colors.white,
    height: .9,
    fontSize: 10,
    fontFamily: FontFamily.inter700,
  );
  //used in {textfield in sign & in product details [text in product details] & in text chose color}
  static const textStyle9 = TextStyle(
    color: Colors.white30,
    fontSize: 9,
    letterSpacing: 2,
    fontFamily: FontFamily.bitter100,
  );
  static const textStyle10 = TextStyle(
    color: Colors.white,
    fontSize: 10,
    fontFamily: FontFamily.bitter100,
    letterSpacing: 1,
  );
  static const textStyle10W60 = TextStyle(
    color: Colors.white60,
    fontSize: 10,
    fontFamily: FontFamily.inter700,
    letterSpacing: 1,
  );
  static const textStyle10Blue = TextStyle(
    color: AppColor.sky2Color,
    fontSize: 10,
    letterSpacing: 2,
    fontFamily: FontFamily.bitter100,
  );
  static const textStyle10R = TextStyle(
    color: AppColor.errorBorderAndRemoveAndIcons,
    fontSize: 10,
    fontFamily: FontFamily.bitter500,
    letterSpacing: 1,
  );
  static const textStyle11 = TextStyle(
    color: Colors.white,
    fontSize: 11,
    fontFamily: FontFamily.bitter300,
    letterSpacing: 2,
  );
  static const textStyle12 = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontFamily: FontFamily.bitter300,
    letterSpacing: 2,
  );
  static const textStyle13 = TextStyle(
    color: Colors.white,
    fontSize: 13,
    fontFamily: FontFamily.bitter300,
    letterSpacing: 2,
  );
  static const textStyle13Blue = TextStyle(
    color: AppColor.sky2Color,
    fontSize: 13,
    letterSpacing: 2,
    fontFamily: FontFamily.bitter100,
  );
  static const textStyle13R = TextStyle(
    color: AppColor.errorBorderAndRemoveAndIcons,
    fontSize: 13,
    letterSpacing: 1,
    fontFamily: FontFamily.bitter500,
  );
  static const textStyle14 = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: FontFamily.bitter300,
    letterSpacing: 2,
  );

  static const textStyle15 = TextStyle(
    color: Colors.white,
    fontSize: 15,
    letterSpacing: 1,
    fontFamily: FontFamily.bitter300,
  );
  static const textStyle16 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    letterSpacing: 1,
    fontFamily: FontFamily.bitter300,
  );
  static const textStyle20 = TextStyle(
    color: Colors.white,
    fontSize: 20,
    letterSpacing: 1,
    fontFamily: FontFamily.platypi900,
  );

  static const textStyle27 = TextStyle(
    color: Colors.white,
    fontSize: 27,
    letterSpacing: 1,
    fontFamily: FontFamily.platypi900,
  );
  static const textStyle16Error = TextStyle(
    color: AppColor.redDeepColor,
    fontSize: 16,
    letterSpacing: 1,
    fontFamily: FontFamily.bitter300,
  );

  static const textPriceInItemMyCartStyle10 = TextStyle(
    color: Colors.white70,
    fontSize: 10,
    fontFamily: FontFamily.orbitron900,
    letterSpacing: 2,
  );
  static const priceTextStyle9 = TextStyle(
    color: Colors.white70,
    fontSize: 9,
    fontFamily: FontFamily.orbitron900,
    decoration: TextDecoration.lineThrough,
  );
  static const priceTextStyle13 = TextStyle(
    color: AppColor.greenColor,
    fontSize: 13,
    fontFamily: FontFamily.orbitron900,
  );
  static const priceTextStyle18 = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: FontFamily.orbitron900,
  );

  static const textRecommendationsInProductDetailsStyle = TextStyle(
    color: Colors.white70,
    fontSize: 12,
    fontFamily: FontFamily.bitter500,
    letterSpacing: 2,
  );
  static const textRateValueInProductDetailsStyle = TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontFamily: FontFamily.bitter500,
  );

  static TextStyle kTextWidthInRowButtons(
    context, {
    itemIndex,
    listColor,
  }) {
    return kWidth(context) <= 380
        ? TextStyles.textStyle11.copyWith(
            color: itemIndex == 6 ? listColor[6] : const Color(0xFFE2E2E2),
          )
        : kWidth(context) <= 420
            ? TextStyles.textStyle15.copyWith(
                color: itemIndex == 6 ? listColor[6] : const Color(0xFFE2E2E2),
              )
            : TextStyles.textStyle16.copyWith(
                color: itemIndex == 6 ? listColor[6] : const Color(0xFFE2E2E2),
              );
  }
}
