import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
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
          // '1.00',
          style: kWidthCondtions(
            context,
            valueIsTrue: TextStyles.textStyle27,
            valueIsFalse: TextStyles.textStyle27.copyWith(fontSize: 33),
          ),
        ),
        Text('/5',
            style: kWidthCondtions(
              context,
              valueIsTrue: TextStyles.textStyle16,
              valueIsFalse: TextStyles.textStyle20,
            )),
      ],
    );
  }
}
