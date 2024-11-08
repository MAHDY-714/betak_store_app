import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class SpecificationsInfoButton extends StatelessWidget {
  const SpecificationsInfoButton({
    super.key,
    required this.nameButton,
    this.startBorder,
    this.endBorder,
    this.topStartBorderRadius,
    this.bottomStartBorderRadius,
    this.topEndBorderRadius,
    this.bottomEndBorderRadius,
    this.onTap,
    required this.width,
  });
  final String nameButton;
  final double? startBorder;
  final double? endBorder;
  final double? topStartBorderRadius;
  final double? bottomStartBorderRadius;
  final double? topEndBorderRadius;
  final double? bottomEndBorderRadius;
  final void Function()? onTap;
  final double width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: width,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: Decorations.moreInfoButtonBoxDecoration(
          startBorder: startBorder,
          endBorder: endBorder,
          topStartBorderRadius: topStartBorderRadius,
          bottomStartBorderRadius: bottomStartBorderRadius,
          topEndBorderRadius: topEndBorderRadius,
          bottomEndBorderRadius: bottomEndBorderRadius,
        ),
        child: Text(
          nameButton,
          style: kWidthCondtions(
            context,
            valueIsTrue: TextStyles.textStyle10,
            valueIsFalse: TextStyles.textStyle13,
          ),
        ),
      ),
    );
  }
}
