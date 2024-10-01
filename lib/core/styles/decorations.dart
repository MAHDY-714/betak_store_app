import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Decorations {
  static const double borderWidthForProduct = 2;
  static const Color borderWidthForProductColor = AppColor.sky4Color;
  static BoxDecoration insideProductHomeItemBuilderBoxDecorations =
      BoxDecoration(
          color: AppColor.backgroundImageCategore,
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
      color: AppColor.backgroundImageCategore,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: AppColor.backgroundLayer2.withOpacity(.2),
        width: 1.0,
      ),
    );
  }

  static BoxDecoration cartItemBoxDecorations({required String images}) {
    return BoxDecoration(
      color: const Color(0xD9000000),
      border: const BorderDirectional(
        end: BorderSide(color: AppColor.borderLogoSign, width: 1.2),
      ),
      borderRadius: BorderRadius.circular(16.0),
      image: DecorationImage(
        fit: BoxFit.cover,
        opacity: .5,
        image: AssetImage(images),
      ),
    );
  }

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
          color: AppColor.backgroundImageCategore,
          width: 1,
        ),
        start: BorderSide(
          color: AppColor.backgroundImageCategore,
          width: startBorder ?? 1,
        ),
        end: BorderSide(
          color: AppColor.backgroundImageCategore,
          width: endBorder ?? 1,
        ),
        bottom: const BorderSide(
          color: AppColor.backgroundImageCategore,
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
        color: AppColor.backgroundImageCategore.withOpacity(.1),
         width: 1,
      ),
    ),
  );
}
