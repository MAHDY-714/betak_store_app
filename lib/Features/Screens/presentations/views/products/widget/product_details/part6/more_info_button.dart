import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class MoreInfoButton extends StatelessWidget {
  const MoreInfoButton({
    super.key,
    required this.nameButton,
    this.startBorder,
    this.endBorder,
    this.topStartBorderRadius,
    this.bottomStartBorderRadius,
    this.topEndBorderRadius,
    this.bottomEndBorderRadius,
    this.onTap,
  });
  final String nameButton;
  final double? startBorder;
  final double? endBorder;
  final double? topStartBorderRadius;
  final double? bottomStartBorderRadius;
  final double? topEndBorderRadius;
  final double? bottomEndBorderRadius;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.07),
          border: BorderDirectional(
            top: const BorderSide(
              color: AppColor.backgroundImageCategore,
              width: 1,
            ),
            start: BorderSide(
              color: AppColor.backgroundImageCategore,
              width: startBorder ?? 1,
            ),
            end: BorderSide(
              color: AppColor.backgroundImageCategore,
              width: endBorder ?? 1,
            ),
            bottom: const BorderSide(
              color: AppColor.backgroundImageCategore,
              width: 1,
            ),
          ),
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(topStartBorderRadius ?? 8),
            bottomStart: Radius.circular(bottomStartBorderRadius ?? 8),
            topEnd: Radius.circular(topEndBorderRadius ?? 8),
            bottomEnd: Radius.circular(bottomEndBorderRadius ?? 8),
          ),
        ),
        child: Text(
          nameButton,
          style: TextStyles.textDiscount,
        ),
      ),
    );
  }
}
