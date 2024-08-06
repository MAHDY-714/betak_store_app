import 'package:betak_store_app/Features/Screens/presentation/views/categories/widget/categories_in_main_category/image_in_main_category.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/categories/widget/categories_in_main_category/row_in_main_category.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ItemCategoryInMainCategory extends StatelessWidget {
  const ItemCategoryInMainCategory({
    super.key,
    this.onTap,
    required this.nameCategories,
    required this.imageCategories,
  });
  final String nameCategories;
  final String imageCategories;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: kHeight(context) * .18,
          width: kWidth(context),
          padding: const EdgeInsetsDirectional.only(end: 8.0),
          decoration: BoxDecoration(
            color: AppColor.backgroundForAllItemsInProductDarkColor,
            border: Border.all(color: AppColor.borderLogoSign, width: .4),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            children: [
              ImageInMainCategory(imageCategories: imageCategories),
              const SizedBox(width: 5),
              Expanded(
                  child: RowInMainCategory(
                nameCategories: nameCategories,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
