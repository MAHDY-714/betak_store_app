import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rating/rate_bar_list_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rating/ovarall_rating_and_recommendations.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class RowRatingWidget extends StatelessWidget {
  const RowRatingWidget({
    super.key,
    required this.productRatingAndReviewsModel,
  });
  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(context),
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      decoration: Decorations.rateAndReviewBodyViewBoxDecorations,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OverallRatingAndRecommendations(
            productRatingAndReviewsModel: productRatingAndReviewsModel,
          ),
          RateAndReviewListView(
            productRatingAndReviewsModel: productRatingAndReviewsModel,
          ),
        ],
      ),
    );
  }
}
