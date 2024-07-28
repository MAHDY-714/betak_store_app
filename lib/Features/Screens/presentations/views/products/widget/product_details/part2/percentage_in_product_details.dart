import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class PercentageInProductDetails extends StatelessWidget {
  const PercentageInProductDetails({
    super.key,
    required this.textDiscount,
  });
  final String textDiscount;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 40,
      decoration: Decorations.percentageInProductDetailsBoxDecorations,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textDiscount,
            style: TextStyles.textDiscount,
          ),
          const SizedBox(
            height: 4,
          ),
          const Icon(
            TablerIcons.discount_2,
            size: 20,
          ),
        ],
      ),
    );
  }
}
