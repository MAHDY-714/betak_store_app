import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OverallRatingWidget extends StatelessWidget {
  const OverallRatingWidget({
    super.key,
    required this.productRatingAndReviewsModel,
  });

  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;

  @override
  Widget build(BuildContext context) {
    String rating =
        productRatingAndReviewsModel!.overallRating!.toStringAsFixed(2);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.center,
      textBaseline: TextBaseline.ideographic,
      children: [
        Text(
          rating,
          // '4.99',
          style: TextStyles.textStyle27,
        ),
        const Text(
          '/5',
          style: TextStyles.textStyle16,
        ),
      ],
    );
  }
}
