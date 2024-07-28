import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class ImageInProductDetails extends StatelessWidget {
  const ImageInProductDetails({
    super.key,
    required this.index,
    required this.child,
  });

  final int index;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context) * .35,
      width: kWidth(context),
      decoration: BoxDecoration(
        color: AppColor.backgroundImageCategore,
        border: const BorderDirectional(
          bottom: BorderSide(
            color: Colors.white70,
            width: 2,
          ),
        ),
        image: DecorationImage(
          scale: 2.5,
          alignment: const Alignment(.1, -.3),
          image: AssetImage(
            AssetsImages.listCategoriesInHome[index],
          ),
        ),
      ),
      child: child,
    );
  }
}
