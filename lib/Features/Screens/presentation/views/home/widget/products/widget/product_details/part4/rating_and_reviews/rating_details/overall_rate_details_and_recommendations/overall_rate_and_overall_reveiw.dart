import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/rating_and_reviews/rating_details/overall_rate_details_and_recommendations/overall_rating_widget.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/rating_and_reviews/rating_details/rating_stars_in_row_rating_widget.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class OverallRateAndOverallReveiwInLeftPart extends StatelessWidget {
  const OverallRateAndOverallReveiwInLeftPart({
    super.key,
    required this.productRatingAndReviewsModel,
  });

  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        OverallRatingWidget(
            productRatingAndReviewsModel: productRatingAndReviewsModel),
        Center(
          child: RateingStarsInRowRatingWidget(
            rateInitialValue: productRatingAndReviewsModel!.overallRating!,
            starsCount: 5,
            starSize:
                kWidthCondtions(context, valueIsTrue: 15.0, valueIsFalse: 18.0),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          width: kWidth(context),
          alignment: const AlignmentDirectional(-.057, 1),
          child: Text(
            '(${productRatingAndReviewsModel!.totalReview!})',
            // '(11)',
            textAlign: TextAlign.center,
            style: kWidthCondtions(
              context,
              valueIsTrue: TextStyles.textStyle10W60,
              valueIsFalse: TextStyles.textStyle10W60.copyWith(fontSize: 13),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
