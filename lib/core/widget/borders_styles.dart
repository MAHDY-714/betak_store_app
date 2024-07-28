import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:flutter/material.dart';

UnderlineInputBorder underLineInputBorder({
  double raduis = 8,
  Color borderColor = AppColor.sky2Color,
  double width = 2,
}) {
  return newMethod(raduis, borderColor, width);
}

UnderlineInputBorder newMethod(double raduis, Color borderColor, double width) {
  return UnderlineInputBorder(
    borderRadius: BorderRadius.circular(raduis),
    borderSide: BorderSide(
      color: borderColor,
      width: width,
    ),
  );
}
