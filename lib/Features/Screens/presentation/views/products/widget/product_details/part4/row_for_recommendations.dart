import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class RowForRecommendations extends StatelessWidget {
  const RowForRecommendations({
    super.key,
    required this.icon,
    required this.recommendationCounter,
  });
  final IconData icon;
  final int recommendationCounter;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: AppColor.backgroundForAllItemsRedColor,
          size: 20,
        ),
        const SizedBox(width: 16),
        Text(
          // '187',
          '$recommendationCounter',
          style: TextStyles.textRecommendationsInProductDetailsStyle,
        ),
      ],
    );
  }
}
