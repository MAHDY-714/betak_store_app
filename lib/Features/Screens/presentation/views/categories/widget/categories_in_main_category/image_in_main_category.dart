import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ImageInMainCategory extends StatelessWidget {
  const ImageInMainCategory({
    super.key,
    required this.imageCategories,
  });

  final String imageCategories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context) * .18,
      width: kWidth(context) * .35,
      alignment: Alignment.center,
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xD9000000),
        border: Border.all(color: AppColor.borderLogoSign, width: .4),
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: .5,
          image: AssetImage(imageCategories),
        ),
      ),
      // child: RowNameAndIconInMainCategory(
      //     nameCategore: kListMainCategoriesName[index].toString()),
    );
  }
}
