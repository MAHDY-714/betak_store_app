import 'package:flutter/material.dart';

void showBottomSheetBody(
  context,
  Widget widget,
) {
  showBottomSheet(
      context: context,
      builder: (context) {
        return widget;
      });
}
