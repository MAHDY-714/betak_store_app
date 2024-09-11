import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Decorations {
  static BoxDecoration insideProductHomeItemBuilderBoxDecorations =
      BoxDecoration(
    color: const Color(0xFFF2F2F2),
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: AppColor.backgroundLayer2,
      width: 1,
    ),
  );

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
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: const Color(0xFF686767),
      width: 0.5,
    ),
  );
  static BoxDecoration swichImagesProductBoxDecoration(
      {required String images}) {
    return BoxDecoration(
      color: AppColor.backgroundImageCategore,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: AppColor.backgroundLayer2.withOpacity(.2),
        width: 1.0,
      ),
      image: DecorationImage(
        scale: 5,
        image: AssetImage(
          images,
        ),
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

  static BoxDecoration goToProductAllInfoButtonBoxDecorationsInside(
      {String? images}) {
    return BoxDecoration(
        // shape: BoxShape.circle,
        borderRadius: const BorderRadiusDirectional.only(
          topStart: Radius.circular(22),
          topEnd: Radius.circular(19),
          bottomStart: Radius.circular(11),
          bottomEnd: Radius.circular(11),
        ),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
        color: AppColor.backgroundLayer2,
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: .85,
          scale: 7,
          image: AssetImage(images ?? ''),
        ));
  }

  static goToProductAllInfoButtonBoxDecorationsOutSide({
    required urlImage,
    size = 40,
    bool isImage = false,
  }) =>
      BoxDecoration(
        // shape: BoxShape.circle,
        borderRadius: const BorderRadiusDirectional.only(
          topStart: Radius.circular(40),
          topEnd: Radius.circular(40),
          bottomStart: Radius.circular(12.5),
          bottomEnd: Radius.circular(12.5),
        ),
        border: Border.all(color: AppColor.backgroundLayer2, width: 5),
        // shape: BoxShape.circle,
        color: AppColor.backgroundLayer2,
        image: isImage
            ? DecorationImage(
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
}
