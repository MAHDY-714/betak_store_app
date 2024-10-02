import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
    this.paddingH,
    this.paddingV,
    this.fontSizeT,
    this.fontSizeF,
  });
  final String title;
  final double? paddingH;
  final double? paddingV;
  final double? fontSizeT;
  final double? fontSizeF;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: kWidth(context),
      alignment: AlignmentDirectional.centerStart,
      padding: EdgeInsetsDirectional.symmetric(
          horizontal: paddingH ?? 0.0, vertical: paddingV ?? 0.0),
      child: Text(
        title,
        style: TextStyles.titilesInLayer2.copyWith(
          fontSize: kHeight(context) >= 770 && kHeight(context) <= 810
              ? fontSizeT ?? 22
              : fontSizeF ?? 25,
        ),
      ),
    );
  }
}
