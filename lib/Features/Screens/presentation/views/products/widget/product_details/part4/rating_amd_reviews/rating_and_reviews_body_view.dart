import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_rating_and_review_cubit/product_rating_and_review_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rating_details/row_rating_details_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/reviews_details/column_reviews_details_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/reviews_details/more_or_less_and_count_reviews_comments/more_or_less_and_count_reviews_comments_row_widget.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RatingAndReviewsBodyView extends StatelessWidget {
  const RatingAndReviewsBodyView({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    var cub = BlocProvider.of<ProductRatingAndReviewCubit>(context);

    return BlocBuilder<ProductRatingAndReviewCubit,
        ProductRatingAndReviewState>(
      builder: (BuildContext context, ProductRatingAndReviewState state) {
        return Stack(
          children: [
            SizedBox(
              height: kHeightCondtions(
                context,
                valueIsTrue: kHeight(context) * .89,
                valueIsFalse: kHeight(context) * .9,
              ),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                slivers: [
                  SliverToBoxAdapter(
                    child: RowRatingDetailsBodyView(
                      productRatingAndReviewsModel:
                          cub.productRatingAndReviewsModel,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: ColumnReviewsDetailsBodyView(
                      productRatingAndReviewsModel:
                          cub.productRatingAndReviewsModel,
                    ),
                  ),
                ],
              ),
            ),
            if (cub.productRatingAndReviewsModel?.reviews != null)
              MoreOrLessReviewsCommentRowWidget(
                productRatingAndReviewsModel: cub.productRatingAndReviewsModel!,
                onTapMore: () {
                  log(cub.reviewsComment.toString());
                  cub.moreReviewsComments(
                      productRatingAndReviewsModel:
                          cub.productRatingAndReviewsModel);
                },
                onTapLess: () {
                  log(cub.reviewsComment.toString());
                  cub.lessReviewsComments(
                      productRatingAndReviewsModel:
                          cub.productRatingAndReviewsModel);
                },
              ),
          ],
        );
      },
    );
  }
}
