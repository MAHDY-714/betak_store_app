import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rating_details/rating_stars_in_row_rating_widget.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rating_details/rate_details/text_rate_counter.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class RowRatingDetailsItemBuilder extends StatelessWidget {
  const RowRatingDetailsItemBuilder({
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
        RateingStarsInRowRatingWidget(
          rateInitialValue: rateInitialValue,
          starsCount: starsCount,
          starSize: kWidthCondtions(
            context,
            valueIsTrue: 15.0,
            valueIsFalse: 18.0,
          ),
        ),
      ],
    );
  }
}
