import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:flutter/material.dart';
/*
enabledBorder
focusedBorder
errorBorder
focusedErrorBorder
 */

UnderlineInputBorder enabledUnderLineInputBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: const BorderSide(
    color: AppColor.sky2Color,
    width: 2,
  ),
);

UnderlineInputBorder focusedUnderLineInputBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    color: AppColor.sky4Color,
    width: 3,
  ),
);

UnderlineInputBorder errorUnderLineInputBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    color: AppColor.errorBorderAndRemoveAndIcons,
    width: 2,
  ),
);

UnderlineInputBorder focusedErrorUnderLineInputBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    color: AppColor.focusederrorBorderAndRemove,
    width: 3,
  ),
);
