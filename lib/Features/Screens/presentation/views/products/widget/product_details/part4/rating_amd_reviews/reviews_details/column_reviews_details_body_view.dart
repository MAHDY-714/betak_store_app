import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/reviews_details/review_details_list_view.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/title_widget.dart';
import 'package:flutter/material.dart';

class ColumnReviewsDetailsBodyView extends StatelessWidget {
  const ColumnReviewsDetailsBodyView({
    super.key,
    this.productRatingAndReviewsModel,
  });

  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const TitleWidget(
          title: 'Reviews Comments',
          paddingH: kPaddingInAllInsideProductDetailsHorizontal,
          fontSizeT: 16,
          fontSizeF: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        ReviewDetailsListView(
          productRatingAndReviewsModel: productRatingAndReviewsModel,
        ),
      ],
    );
  }
}
