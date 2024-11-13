import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class TextInMyCartItem extends StatelessWidget {
  const TextInMyCartItem({
    super.key,
    required this.title,
    this.color = AppColor.backgroundImageWhiteColor,
    this.fontTrue = 11.5,
    this.fontFalse = 14.0,
  });
  final String title;
  final Color color;
  final double fontTrue;
  final double fontFalse;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidth(context) * .5,
      child: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.textStyle10W60.copyWith(
            color: color,
            fontSize: kWidthCondtions(context,
                valueIsTrue: fontTrue, valueIsFalse: fontFalse)),
      ),
    );
  }
}
