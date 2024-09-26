import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class RowForRecommendations extends StatelessWidget {
  const RowForRecommendations({
    super.key,
    required this.icon,
    required this.recommendationCounter,
    this.iconColor = AppColor.backgroundForAllItemsRedColor,
  });
  final IconData icon;
  final int recommendationCounter;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 20,
        ),
        const SizedBox(width: 4),
        Text(
          // '187',
          '$recommendationCounter',
          style: TextStyles.textRecommendationsInProductDetailsStyle,
        ),
      ],
    );
  }
}
