import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_rating_and_review_cubit/product_rating_and_review_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/reviews_details/review_details_list_view.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:betak_store_app/core/widget/title_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColumnReviewsDetailsBodyView extends StatelessWidget {
  const ColumnReviewsDetailsBodyView({
    super.key,
    this.productRatingAndReviewsModel,
    this.onPressed,
  });

  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;
  final void Function()? onPressed;
  // final int moreReviewsComment;

  @override
  Widget build(BuildContext context) {
    var cub = BlocProvider.of<ProductRatingAndReviewCubit>(context);
    log(cub.reviewsComment.toString());
    return BlocBuilder<ProductRatingAndReviewCubit,
        ProductRatingAndReviewState>(
      builder: (context, state) {
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
            ConditionalBuilder(
              condition: productRatingAndReviewsModel?.reviews != null,
              builder: (context) => ReviewDetailsListView(
                productRatingAndReviewsModel: productRatingAndReviewsModel,
                moreReviews:
                    productRatingAndReviewsModel!.reviews!.length <= 10
                        ? productRatingAndReviewsModel!.reviews!.length
                        : cub.reviewsComment,
              ),
              fallback: (context) => SizedBox(
                  height: kHeight(context) * .5,
                  child: const CircleLoadingIndicatorWidget()),
            ),
          ],
        );
      },
    );
  }
}
