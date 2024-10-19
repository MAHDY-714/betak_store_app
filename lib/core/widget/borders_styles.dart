import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:flutter/material.dart';

class BordersStyle {
  //SignIn & SignUp
  static UnderlineInputBorder signInAndUpEnabledUnderLineInputBorder =
      UnderlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: AppColor.sky2Color,
      width: 2,
    ),
  );

  static UnderlineInputBorder signInAndUpFocusedUnderLineInputBorder =
      UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColor.sky4Color,
      width: 3,
    ),
  );

  static UnderlineInputBorder signInAndUpErrorUnderLineInputBorder =
      UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColor.errorBorderAndRemoveAndIcons,
      width: 2,
    ),
  );

  static UnderlineInputBorder signInAndUpFocusedErrorUnderLineInputBorder =
      UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColor.focusederrorBorderAndRemove,
      width: 3,
    ),
  );

  //Search Screen
  static UnderlineInputBorder searchEnabledUnderLineInputBorder =
      UnderlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
        color: AppColor.skyColor,
      width: 1,
    ),
  );

  static UnderlineInputBorder searchFocusedUnderLineInputBorder =
      UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColor.sky2Color,
      width: 3,
    ),
  );

  static UnderlineInputBorder searchErrorUnderLineInputBorder =
      UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColor.errorBorderAndRemoveAndIcons,
      width: 2,
    ),
  );

  static UnderlineInputBorder searchFocusedErrorUnderLineInputBorder =
      UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColor.focusederrorBorderAndRemove,
      width: 3,
    ),
  );
}
