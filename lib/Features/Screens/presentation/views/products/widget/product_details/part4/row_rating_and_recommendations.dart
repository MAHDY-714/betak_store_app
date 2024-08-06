import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/row_for_rate.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/row_for_recommendations.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowRatingAndRecommendations extends StatelessWidget {
  const RowRatingAndRecommendations(
      {super.key,
      required this.rateValue,
      required this.rateCounter,
      required this.recommendationCounterPositive,
      required this.recommendationCounterNegative,
      this.onTap});
  final double rateValue;
  final int rateCounter;
  final int recommendationCounterPositive;
  final int recommendationCounterNegative;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
      child: Container(
        height: 105,
        width: kWidth(context) * .75,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: Decorations
            .rowForRateAndRecomendationsInProductDetailsBoxDecorations,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowForRate(
              rateValue: rateValue,
              rateCounter: rateCounter,
            ),
            const SizedBox(width: 8),
            RowForRecommendations(
              icon: FontAwesomeIcons.solidHeart,
              recommendationCounter: recommendationCounterPositive,
            ),
            Row(
              children: [
                RowForRecommendations(
                  icon: FontAwesomeIcons.heartCrack,
                  recommendationCounter: recommendationCounterNegative,
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
        ),
      ),
    );
  }
}
