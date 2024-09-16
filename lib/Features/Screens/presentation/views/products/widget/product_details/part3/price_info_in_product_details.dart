import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class PriceInfoInProductDetails extends StatelessWidget {
  const PriceInfoInProductDetails({
    super.key,
    required this.productResults,
  });
  final ProductResults productResults;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${productResults.price!.round()}💲',
                style: TextStyles.priceInProductDetailsStyle,
              ),
              const SizedBox(
                width: 4,
              ),
              if (productResults.promotion != null)
                Text(
                  '${productResults.promotion!.original!.round()}💲',
                  style: TextStyles.priceWasInProductDetailsStyle,
                ),
            ],
          ),
        ),
        if (productResults.promotion != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Your save:",
                  style: TextStyles.hintTextStyle,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  '${productResults.promotion!.save!.round()}💲',
                  style: TextStyles.textStyle13,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
