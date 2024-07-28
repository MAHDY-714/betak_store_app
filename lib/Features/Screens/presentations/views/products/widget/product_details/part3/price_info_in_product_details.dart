import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class PriceInfoInProductDetails extends StatelessWidget {
  const PriceInfoInProductDetails({
    super.key,
    required this.price,
    required this.priceWas,
    required this.priceSave,
  });
  final double price;
  final double priceWas;
  final double priceSave;
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
                '${price.round()}\$',
                style: TextStyles.priceInProductDetailsStyle,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '${priceWas.round()}\$',
                style: TextStyles.priceWasInProductDetailsStyle,
              ),
            ],
          ),
        ),
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
                '${priceSave.round()}\$',
                style: TextStyles.textStyle13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
