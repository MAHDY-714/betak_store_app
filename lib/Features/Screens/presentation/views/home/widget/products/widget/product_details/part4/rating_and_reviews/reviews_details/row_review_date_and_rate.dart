import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/rating_and_reviews/rating_details/rating_stars_in_row_rating_widget.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class RowReviewDateAndRate extends StatelessWidget {
  const RowReviewDateAndRate({
    super.key,
    required this.reviewDateTime,
    required this.productRatingAndReviewsModel,
    required this.index,
  });

  final String reviewDateTime;
  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          reviewDateTime,
          style: TextStyles.textStyle9.copyWith(
              fontSize: kWidthCondtions(context,
                  valueIsTrue: 9.0, valueIsFalse: 12.0)),
        ),
        const Spacer(),
        Text(
          '(${productRatingAndReviewsModel!.reviews![index].rating!.toDouble()})',
          style: TextStyles.textStyle10W60.copyWith(
              fontSize: kWidthCondtions(context,
                  valueIsTrue: 10.0, valueIsFalse: 13.0)),
        ),
        const SizedBox(
          width: 4,
        ),
        RateingStarsInRowRatingWidget(
            rateInitialValue: productRatingAndReviewsModel!
                .reviews![index].rating!
                .toDouble(),
            starsCount: 5,
            starSize: kWidthCondtions(context,
                valueIsTrue: 15.0, valueIsFalse: 18.0)),
      ],
    );
  }
}
