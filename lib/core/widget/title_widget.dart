import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title, this.padding});
  final String title;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: kWidth(context),
      alignment: AlignmentDirectional.centerStart,
      padding: EdgeInsetsDirectional.symmetric(horizontal: padding ?? 0.0),
      child: Text(
        title,
        style: TextStyles.titilesInLayer2,
      ),
    );
  }
}
