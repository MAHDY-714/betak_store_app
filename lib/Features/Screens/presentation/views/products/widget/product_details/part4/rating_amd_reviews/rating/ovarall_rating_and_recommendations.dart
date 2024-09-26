import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rating/overall_rating_widget.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rating/rating_stars.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/row_for_recommendations.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class OverallRatingAndRecommendations extends StatelessWidget {
  const OverallRatingAndRecommendations({
    super.key,
    required this.productRatingAndReviewsModel,
  });
  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(context) * .37,
      padding: const EdgeInsetsDirectional.symmetric(vertical: 8),
      child: ConditionalBuilder(
        condition: productRatingAndReviewsModel != null,
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OverallRatingWidget(
                productRatingAndReviewsModel: productRatingAndReviewsModel),
            RateingStars(
              rateInitialValue: productRatingAndReviewsModel!.overallRating!,
              starsCount: 5,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              '(${productRatingAndReviewsModel!.totalReview!})',
              textAlign: TextAlign.center,
              style: TextStyles.textStyle10W60,
            ),
            const SizedBox(
              height: 8,
            ),
            RowForRecommendations(
              icon: TablerIcons.arrow_big_up_line_filled,
              recommendationCounter:
                  productRatingAndReviewsModel!.totalPositiveRecommendation!,
              iconColor: AppColor.greenColor,
            ),
            const SizedBox(
              height: 4,
            ),
            RowForRecommendations(
              icon: TablerIcons.arrow_big_down_line_filled,
              recommendationCounter:
                  productRatingAndReviewsModel!.totalNegativeRecommendation!,
            ),
          ],
        ),
        fallback: (context) =>
            const Center(child: CircleLoadingIndicatorWidget()),
      ),
    );
  }
}
