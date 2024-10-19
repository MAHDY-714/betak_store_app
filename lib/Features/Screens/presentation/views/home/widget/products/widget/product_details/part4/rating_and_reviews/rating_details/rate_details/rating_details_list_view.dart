import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_rating_and_review_cubit/product_rating_and_review_cubit.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'rating_details_item.dart';
import 'package:flutter/material.dart';

class RatingDetailsListView extends StatelessWidget {
  const RatingDetailsListView(
      {super.key, required this.productRatingAndReviewsModel});
  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;

  @override
  Widget build(BuildContext context) {
    var cub = BlocProvider.of<ProductRatingAndReviewCubit>(context);
    return BlocBuilder<ProductRatingAndReviewCubit,
        ProductRatingAndReviewState>(
      builder: (context, state) {
        return SizedBox(
          width: kWidth(context) * .58,
          // height: kHeight(context) * .25,
          // color: Colors.blue,
          child: ConditionalBuilder(
            condition: productRatingAndReviewsModel != null,
            builder: (context) => ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return RowRatingDetailsItemBuilder(
                  rateInitialValue: cub
                      .productRatingAndReviewsModel!.ratings![index].stars!
                      .toDouble(),
                  rateCounter:
                      productRatingAndReviewsModel!.ratings![index].count!,
                  allRateCounter: productRatingAndReviewsModel!.totalReview!,
                );
              },
            ),
            fallback: (context) =>
                const Center(child: CircleLoadingIndicatorWidget()),
          ),
        );
      },
    );
  }
}
