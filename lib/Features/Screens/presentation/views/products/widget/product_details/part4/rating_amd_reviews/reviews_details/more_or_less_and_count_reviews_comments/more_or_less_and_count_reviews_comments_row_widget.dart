import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/reviews_details/more_or_less_and_count_reviews_comments/buttons_more_or_less_reviews_comments.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/reviews_details/more_or_less_and_count_reviews_comments/count_reviews_comments.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class MoreOrLessReviewsCommentRowWidget extends StatelessWidget {
  const MoreOrLessReviewsCommentRowWidget({
    super.key,
    this.onTapMore,
    this.onTapLess,
    required this.productRatingAndReviewsModel,
  });
  final ProductRatingAndReviewsModel productRatingAndReviewsModel;
  final void Function()? onTapMore;
  final void Function()? onTapLess;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Container(
        width: kWidth(context),
        height: 50,
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: AppColor.sky2Color.withOpacity(.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CountReviewsComments(
                productRatingAndReviewsModel: productRatingAndReviewsModel),
            const Spacer(),
            ButtonMoreOrLessReviewsComments(
                onTapLess: onTapLess, onTapMore: onTapMore),
          ],
        ),
      ),
    );
  }
}
