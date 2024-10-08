import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/reviews_details/review_details_item_view.dart';
import 'package:flutter/material.dart';

class ReviewDetailsListView extends StatelessWidget {
  const ReviewDetailsListView(
      {super.key,
      this.productRatingAndReviewsModel,
      required this.moreReviews});
  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;
  final int moreReviews;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        log('this reviews length ${productRatingAndReviewsModel!.reviews!.length}');
        return ReviewDetailsItemBuilder(
          productRatingAndReviewsModel: productRatingAndReviewsModel,
          index: index,
        );
      },
      itemCount: moreReviews,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}
