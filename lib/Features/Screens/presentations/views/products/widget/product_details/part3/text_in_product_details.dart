import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class TextInProductDetails extends StatelessWidget {
  const TextInProductDetails({
    super.key,
    this.text = 'Name Product For More Details Name Product For More Details',
    this.paddingWidth = 12,
    this.style,
  });
  final String text;
  final double paddingWidth;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(context),
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: paddingWidth,
      ),
      child: Text(
        text,
        // 'Name Product For More Details Name Product For More Details',
        textAlign: TextAlign.start,
        style: style ?? TextStyles.textStyle16,
      ),
    );
  }
}
