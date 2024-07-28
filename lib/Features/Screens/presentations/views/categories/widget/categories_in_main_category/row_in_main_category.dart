import 'package:betak_store_app/core/styles/app_color.dart';
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
            style: TextStyles.textStyle15,
          ),
        ),
        Opacity(
          opacity: .5,
          child: Container(
            padding: const EdgeInsetsDirectional.all(2.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColor.backgroundLayer2,
              border: Border.all(color: AppColor.borderLogoSign, width: 2),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              FontAwesomeIcons.angleRight,
              size: 30,
              color: Colors.white,
              // grade: .5,
            ),
          ),
        ),
      ],
    );
  }
}
