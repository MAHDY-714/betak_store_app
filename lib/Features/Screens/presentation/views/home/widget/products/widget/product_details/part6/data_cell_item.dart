import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

DataCell dataCell(
  BuildContext context,
  int index, {
  required String text,
  TextStyle? textStyle,
  double width = .4,
}) {
  return DataCell(
    Container(
      width: kWidth(context) * width,
      color: index.isEven
          ? AppColor.backgroundForAllItemsInProductDarkColor
          : Colors.transparent,
      alignment: AlignmentDirectional.centerStart,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        text,
        style: textStyle ?? TextStyles.toggleSign,
      ),
    ),
  );
}
