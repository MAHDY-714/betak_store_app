import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rating/rating_stars.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rating/text_rate_counter.dart';
import 'package:flutter/material.dart';

class RowRatingBarItemBuilder extends StatelessWidget {
  const RowRatingBarItemBuilder({
    super.key,
    this.rateInitialValue = 5,
    required this.rateCounter,
    required this.allRateCounter,
    this.starsCount = 5,
  });
  final double rateInitialValue;
  final int rateCounter;
  final int starsCount;
  final int allRateCounter;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextRateCounter(rateCounter: rateCounter),
        const SizedBox(width: 4),
        RateingStars(
          rateInitialValue: rateInitialValue,
          starsCount: starsCount,
        ),
      ],
    );
  }
}
