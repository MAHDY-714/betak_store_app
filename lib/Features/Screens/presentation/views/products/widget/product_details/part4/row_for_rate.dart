import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class RowForRate extends StatelessWidget {
  const RowForRate({
    super.key,
    required this.rateValue,
    required this.rateCounter,
  });
  final double rateValue;
  final int rateCounter;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$rateValue',
          style: TextStyles.textRateValueInProductDetailsStyle,
        ),
        const SizedBox(width: 8),
        Text(
          kRating(
            rating: rateValue,
          ),
          style: TextStyles.priceInProductDetailsStyle,
        ),
        const SizedBox(width: 8),
        Text(
          // '(2404)',
          '$rateCounter',
          style: TextStyles.hintTextStyle,
        ),
      ],
    );
  }
}
