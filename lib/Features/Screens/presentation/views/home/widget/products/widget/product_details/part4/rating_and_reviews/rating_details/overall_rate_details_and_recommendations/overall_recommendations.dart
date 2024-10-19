import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/rating_and_reviews/rating_details/overall_rate_details_and_recommendations/row_for_recommendations.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class OverallRecommendations extends StatelessWidget {
  const OverallRecommendations({
    super.key,
    required this.productRatingAndReviewsModel,
  });

  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
