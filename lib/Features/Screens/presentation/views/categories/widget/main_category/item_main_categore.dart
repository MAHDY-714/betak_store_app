import 'package:betak_store_app/Features/Screens/presentation/views/categories/widget/row_name_and_icon_in_main_category.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
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
      padding: const EdgeInsetsDirectional.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: kHeight(context) * .22,
          width: kWidth(context),
          alignment: Alignment.center,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: const Color(0xD9000000),
            border: Border.all(color: AppColor.borderLogoSign, width: .7),
            borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              opacity: .5,
              image: AssetImage(
                images,
              ),
            ),
          ),
          child: RowNameAndIconInMainCategory(
            nameCategore: nameCategories,
          ),
        ),
      ),
    );
  }
}
