import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Decorations {
  static const double borderWidthForProduct = 2;
  static const Color borderWidthForProductColor = AppColor.sky4Color;
  static BoxDecoration insideProductHomeItemBuilderBoxDecorations =
      BoxDecoration(
          color: AppColor.backgroundImageWhiteColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: borderWidthForProductColor,
            width: borderWidthForProduct,
          ));

  static BoxDecoration outsideproductHomeItemBuilderBoxDecorations =
      BoxDecoration(
    color: AppColor.backgroundLayer2,
    borderRadius: BorderRadius.circular(32),
  );

  static const layer2BoxDecorations = BoxDecoration(
    color: AppColor.backgroundLayer2,
    borderRadius: BorderRadiusDirectional.only(
      topStart: Radius.circular(32),
      topEnd: Radius.circular(32),
    ),
  );
  static BoxDecoration percentageInProductDetailsBoxDecorations =
      const BoxDecoration(
    color: AppColor.backgroundForAllItemsRedColor,
    border: BorderDirectional(
      bottom: BorderSide(
        color: Colors.white,
        width: 1,
      ),
      start: BorderSide(
        color: Colors.white,
        width: 1,
      ),
      end: BorderSide(
        color: Colors.white,
        width: 1,
      ),
    ),
    borderRadius: BorderRadiusDirectional.only(
      bottomStart: Radius.circular(32.0),
      bottomEnd: Radius.circular(32.0),
      topEnd: Radius.circular(0.0),
      topStart: Radius.circular(0.0),
    ),
  );
  static BoxDecoration
      rowForRateAndRecomendationsInProductDetailsBoxDecorations = BoxDecoration(
    color: AppColor.backgroundForAllItemsInProductDarkColor,
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
      color: AppColor.sky2Color,
      width: 0.5,
    ),
  );
  static BoxDecoration swichImagesProductBoxDecoration() {
    return BoxDecoration(
      color: AppColor.backgroundImageWhiteColor,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: AppColor.backgroundLayer2.withOpacity(.2),
        width: 1.25,
      ),
    );
  }

  static const myCartItemBoxDecoration = BoxDecoration(
    color: Color(0xFF090E1A),
    borderRadius: BorderRadiusDirectional.only(
      topStart: Radius.circular(16.0),
      bottomStart: Radius.circular(16.0),
      // topEnd: Radius.circular(16.0),
      // bottomEnd: Radius.circular(16.0),
    ),
    border: BorderDirectional(
      bottom: BorderSide(
        color: AppColor.itemUnSelectedInHomeBottomNavBar,
        width: 2.5,
      ),
      top: BorderSide(
        color: AppColor.itemUnSelectedInHomeBottomNavBar,
        width: 2.5,
      ),
      start: BorderSide(
        color: AppColor.itemUnSelectedInHomeBottomNavBar,
        width: 2.5,
      ),
      // end: BorderSide(
      //   color: AppColor.itemUnSelectedInHomeBottomNavBar,
      //   width: 2,
      // ),
    ),
  );

  static BoxDecoration imageInMyCartItemBoxDecorations(
      {required String images}) {
    const Color color = Color(0xFF3D3F47);
    return BoxDecoration(
      color: const Color(0xFF090E1A),
      border: const BorderDirectional(
        end: BorderSide(
          color: color,
          width: 2.5,
        ),
        bottom: BorderSide(
          color: color,
          width: 0.1,
        ),
        top: BorderSide(
          color: color,
          width: 0.1,
        ),
      ),
      borderRadius: const BorderRadiusDirectional.only(
        topEnd: Radius.circular(16.0),
        bottomEnd: Radius.circular(16.0),
        topStart: Radius.circular(14.0),
        bottomStart: Radius.circular(14.0),
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        opacity: .5,
        image: CachedNetworkImageProvider(images),
      ),
    );
  }

  static BoxDecoration countOfUnitsAndRemoveItemBoxDecoration = BoxDecoration(
    color: AppColor.backgroundForAllItemsInProductDarkColor,
    borderRadius: BorderRadius.circular(16.0),
    border: const BorderDirectional(
      top: BorderSide(
        color: AppColor.itemUnSelectedInHomeBottomNavBar,
        width: 2,
      ),
      bottom: BorderSide(
        color: AppColor.itemUnSelectedInHomeBottomNavBar,
        width: 2,
      ),
      start: BorderSide(
        color: AppColor.itemUnSelectedInHomeBottomNavBar,
        width: 1,
      ),
      end: BorderSide(
        color: AppColor.itemUnSelectedInHomeBottomNavBar,
        width: 1,
      ),
    ),
  );

  static BoxDecoration countOfUnitsItemBoxDecoration = BoxDecoration(
      borderRadius: const BorderRadiusDirectional.all(
        Radius.circular(14.0),
      ),
      color: AppColor.skyNightColor.withOpacity(.7),
      border: const BorderDirectional(
        top: BorderSide(
          color: AppColor.itemUnSelectedInHomeBottomNavBar,
          width: 2,
        ),
      ));

  static BoxDecoration goToProductAllInfoButtonBoxDecorationsInside({
    required urlImage,
    size = 40,
    bool isImage = false,
  }) =>
      BoxDecoration(
        // shape: BoxShape.circle,
        borderRadius: const BorderRadiusDirectional.only(
          topStart: Radius.circular(16),
          topEnd: Radius.circular(0),
          bottomStart: Radius.circular(0),
          bottomEnd: Radius.circular(16),
        ),
        border: Border.all(
            color: borderWidthForProductColor, width: borderWidthForProduct),
        color: Colors.transparent,
        image: isImage
            ? DecorationImage(
                fit: BoxFit.fill,
                opacity: .9,
                onError: (exception, stackTrace) => Icon(
                  Icons.error,
                  color: AppColor.focusederrorBorderAndRemove,
                  size: size,
                ),
                image: CachedNetworkImageProvider(
                  urlImage,
                ),
              )
            : null,
      );

  static goToProductAllInfoButtonBoxDecorationsOutSide({
    required urlImage,
    size = 40,
    bool isImage = false,
  }) =>
      BoxDecoration(
        // shape: BoxShape.circle,
        borderRadius: const BorderRadiusDirectional.only(
          topStart: Radius.circular(24),
          topEnd: Radius.circular(0),
          bottomStart: Radius.circular(0),
          // bottomEnd: Radius.circular(0),
        ),
        border: const BorderDirectional(
          start: BorderSide(
            color: borderWidthForProductColor,
            width: borderWidthForProduct,
          ),
          top: BorderSide(
            color: borderWidthForProductColor,
            width: borderWidthForProduct,
          ),
        ),
        color: AppColor.backgroundLayer2,
        image: isImage
            ? DecorationImage(
                fit: BoxFit.fill,
                opacity: .9,
                onError: (exception, stackTrace) => Icon(
                  Icons.error,
                  color: AppColor.focusederrorBorderAndRemove,
                  size: size,
                ),
                image: CachedNetworkImageProvider(
                  urlImage,
                ),
              )
            : null,
      );
  static const imageInProfileBoxDecorationsOutSide = BoxDecoration(
    color: Color(0xFF000110),
    border: BorderDirectional(
      top: BorderSide(
        color: AppColor.sky2Color,
        width: 2,
      ),
      end: BorderSide(
        color: AppColor.sky2Color,
        width: 2,
      ),
      bottom: BorderSide(
        color: AppColor.sky2Color,
        width: 2,
      ),
    ),
    borderRadius: BorderRadiusDirectional.only(
      topEnd: Radius.circular(96),
      bottomEnd: Radius.circular(96),
    ),
  );
  static BoxDecoration imageInProfileBoxDecorationsInSide(
          {required String image}) =>
      BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColor.sky2Color,
          width: 3,
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          image: AssetImage(image),
        ),
      );

  static BoxDecoration moreInfoButtonBoxDecoration({
    double? startBorder,
    double? endBorder,
    double? topStartBorderRadius,
    double? bottomStartBorderRadius,
    double? topEndBorderRadius,
    double? bottomEndBorderRadius,
  }) {
    return BoxDecoration(
      color: Colors.grey.withOpacity(.07),
      border: BorderDirectional(
        top: const BorderSide(
          color: AppColor.backgroundImageWhiteColor,
          width: 1,
        ),
        start: BorderSide(
          color: AppColor.backgroundImageWhiteColor,
          width: startBorder ?? 1,
        ),
        end: BorderSide(
          color: AppColor.backgroundImageWhiteColor,
          width: endBorder ?? 1,
        ),
        bottom: const BorderSide(
          color: AppColor.backgroundImageWhiteColor,
          width: 1,
        ),
      ),
      borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(topStartBorderRadius ?? 8),
        bottomStart: Radius.circular(bottomStartBorderRadius ?? 8),
        topEnd: Radius.circular(topEndBorderRadius ?? 8),
        bottomEnd: Radius.circular(bottomEndBorderRadius ?? 8),
      ),
    );
  }

  static BoxDecoration rateAndReviewBodyViewBoxDecorations = BoxDecoration(
    color: AppColor.sky4Color.withOpacity(.01),
    border: BorderDirectional(
      bottom: BorderSide(
        color: AppColor.skyLightColor,
        width: 1,
      ),
    ),
  );

  static BoxDecoration reviewDetailsItemBoxDecoration = BoxDecoration(
    color: AppColor.sky2Color.withOpacity(.05),
    border: BorderDirectional(
      bottom: BorderSide(
        color: AppColor.skyLightColor,
        width: 1,
      ),
      top: BorderSide(
        color: AppColor.skyLightColor,
        width: 1,
      ),
    ),
  );

  static BoxDecoration itemMainCategoreBoxDecoration({required String images}) {
    return BoxDecoration(
      color: AppColor.backgroundForAllItemsInProductDarkColor,
      border: Border.all(color: AppColor.skyNightColor, width: 3.75),
      borderRadius: BorderRadius.circular(16.0),
      image: DecorationImage(
        fit: BoxFit.fitWidth,
        opacity: .5,
        image: AssetImage(
          images,
        ),
      ),
    );
  }

  static BoxDecoration imageInItemInMainCategoryBoxDecoration(
      {required String imageCategories}) {
    return BoxDecoration(
      color: Colors.transparent,
      border: BorderDirectional(
        end: BorderSide(color: AppColor.skyNightColor, width: 5),
      ),
      borderRadius: const BorderRadiusDirectional.only(
        topStart: Radius.circular(10.0),
        bottomStart: Radius.circular(10.0),
        topEnd: Radius.circular(0.0),
        bottomEnd: Radius.circular(0.0),
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        opacity: .5,
        image: AssetImage(imageCategories),
      ),
    );
  }
}
