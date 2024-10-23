import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/font_family.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowInMainCategory extends StatelessWidget {
  const RowInMainCategory({
    super.key,
    required this.nameCategories,
  });
  final String nameCategories;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            nameCategories,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyles.textStyle10W60.copyWith(
              fontSize: 15,
              fontFamily: FontFamily.bitter600,
            ),
          ),
        ),
        Opacity(
          opacity: .5,
          child: Container(
            padding: const EdgeInsetsDirectional.all(2.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColor.backgroundForAllItemsInProductDarkColor,
              border: Border.all(color: AppColor.skyNightColor, width: 3.75),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              FontAwesomeIcons.angleRight,
              size: 30,
              color: AppColor.backgroundImageWhiteColor,
              // grade: .5,
            ),
          ),
        ),
      ],
    );
  }
}
