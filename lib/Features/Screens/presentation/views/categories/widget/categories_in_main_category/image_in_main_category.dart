import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ImageInMainCategory extends StatelessWidget {
  const ImageInMainCategory({
    super.key,
    required this.imageCategories,
    this.onTap,
  });

  final String imageCategories;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: kHeight(context) * .18,
        width: kWidth(context) * .36,
        alignment: Alignment.center,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 8.0),
        decoration: Decorations.imageInItemInMainCategoryBoxDecoration(
            imageCategories: imageCategories),
        // child: RowNameAndIconInMainCategory(
        //     nameCategore: kListMainCategoriesName[index].toString()),
      ),
    );
  }
}
