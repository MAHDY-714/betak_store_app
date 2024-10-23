import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/font_family.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowNameAndIconInMainCategory extends StatelessWidget {
  const RowNameAndIconInMainCategory({
    super.key,
    required this.nameCategore,
  });
  final String nameCategore;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          nameCategore,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyles.textStyle10W60.copyWith(
            fontSize: 25,
            fontFamily: FontFamily.bitter600,
          ),
        ),
        const Opacity(
          opacity: .1,
          child: Icon(
            FontAwesomeIcons.angleRight,
            size: 80,
            color: AppColor.backgroundImageWhiteColor,
            // grade: .5,
          ),
        ),
      ],
    );
  }
}
