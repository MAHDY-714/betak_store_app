import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class InfoPriceAndTotalInMyCart extends StatelessWidget {
  const InfoPriceAndTotalInMyCart({
    super.key,
    required this.title,
    required this.price,
    required this.style,
  });
  final String title;
  final double price;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          maxLines: 1,
          style: TextStyles.textStyle10W60,
        ),
        Text(
          '\$${price.round()}',
          maxLines: 1,
          style: style,
        ),
      ],
    );
  }
}
