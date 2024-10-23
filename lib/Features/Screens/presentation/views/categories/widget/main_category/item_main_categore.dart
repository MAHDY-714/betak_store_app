import 'package:betak_store_app/Features/Screens/presentation/views/categories/widget/categories_in_main_category/row_name_and_icon_in_main_category.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ItemMainCategore extends StatelessWidget {
  const ItemMainCategore({
    super.key,
    this.onTap,
    required this.images,
    required this.nameCategories,
  });
  final String images;
  final String nameCategories;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(vertical: 4.0, horizontal: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: kHeight(context) * .22,
          width: kWidth(context),
          alignment: Alignment.center,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
          decoration: Decorations.itemMainCategoreBoxDecoration(images: images),
          child: RowNameAndIconInMainCategory(
            nameCategore: nameCategories,
          ),
        ),
      ),
    );
  }
}
