import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class PercentageWidget extends StatelessWidget {
  const PercentageWidget({
    super.key,
    this.isDiscount = false,
    required this.textDiscount,
  });
  final bool isDiscount;
  final String textDiscount;
  @override
  Widget build(BuildContext context) {
    int textLength = textDiscount.length;
    return SizedBox(
      width: 60,
      // alignment: const AlignmentDirectional(-.85, -.9),
      child: isDiscount
          ? Container(
              height: 30,
              width: textLength == 2 ? 50 : 60,
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsetsDirectional.all(2),
              decoration: BoxDecoration(
                color: AppColor.backgroundForAllItemsRedColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    textDiscount,
                    style: TextStyles.textDiscount,
                  ),
                  const Icon(
                    TablerIcons.discount_2,
                    size: 20,
                  ),
                  // Image(
                  //   height: 25,
                  //   width: 25,
                  //   image: AssetImage(
                  //     AssetsImages.discountIcon,
                  //   ),
                  // ),
                ],
              ),
            )
          : null,
    );
  }
}
