import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/rating_and_reviews/rating_details/overall_rate_details_and_recommendations/overall_rate_and_overall_reveiw.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/rating_and_reviews/rating_details/overall_rate_details_and_recommendations/overall_recommendations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

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
      // color: Colors.red,
      padding: const EdgeInsetsDirectional.symmetric(vertical: 8), 
      child: ConditionalBuilder(
        condition: productRatingAndReviewsModel != null,
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OverallRateAndOverallReveiwInLeftPart(
                productRatingAndReviewsModel: productRatingAndReviewsModel),
            OverallRecommendations(
                productRatingAndReviewsModel: productRatingAndReviewsModel),
          ],
        ),
        fallback: (context) =>
            const Center(child: CircleLoadingIndicatorWidget()),
      ),
    );
  }
}
