import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ButtonMoreOrLessReviewsComments extends StatelessWidget {
  const ButtonMoreOrLessReviewsComments({
    super.key,
    required this.onTapLess,
    required this.onTapMore,
  });

  final void Function()? onTapLess;
  final void Function()? onTapMore;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: onTapLess,
          child: Icon(
            FontAwesome.circle_chevron_up_solid,
            color: AppColor.skyColor.withOpacity(.4),
            size: 26.0,
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        InkWell(
          onTap: onTapMore,
          child: Icon(
            FontAwesome.circle_chevron_down_solid,
            color: AppColor.skyColor.withOpacity(.4),
            size: 26.0,
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
      ],
    );
  }
}
