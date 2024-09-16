import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class RowForRate extends StatelessWidget {
  const RowForRate({
    super.key,
    required this.rateValue,
    required this.rateCounter,
    this.onTap,
  });
  final double rateValue;
  final int rateCounter;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              kRating(
                rating: rateValue,
              ),
              style: TextStyles.priceInProductDetailsStyle,
            ),
            const SizedBox(width: 8),
            Text(
              '$rateValue',
              style: TextStyles.textRateValueInProductDetailsStyle,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Image(
                height: 25,
                width: 25,
                color: AppColor.amberColor,
                image: AssetImage(
                  AssetsImages.profileIcon,
                )),
            const SizedBox(width: 8),
            Text(
              // '(2404)',
              '$rateCounter',
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToLastDescent: false),
              style: TextStyles.textStyle16,
            ),
            const Spacer(),
            InkWell(
              onTap: onTap,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Ratings ▲',
                    style: TextStyles.orAndReviewStyle,
                  ),
                  Container(
                    height: 1,
                    width: 75,
                    color: AppColor.sky2Color,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
