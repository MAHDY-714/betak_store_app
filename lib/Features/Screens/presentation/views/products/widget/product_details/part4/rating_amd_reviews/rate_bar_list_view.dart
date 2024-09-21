import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_rating_and_review_cubit/product_rating_and_review_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'rating_bar_item.dart';
import '../../../../../../../../../core/styles/font_family.dart';
import '../../../../../../../../../core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class RateAndReviewListView extends StatelessWidget {
  const RateAndReviewListView({super.key});
  // final ProductRatingAndReviewsModel productRatingAndReviewsModel;

  @override
  Widget build(BuildContext context) {
    var cub = BlocProvider.of<ProductRatingAndReviewCubit>(context);
    return BlocBuilder<ProductRatingAndReviewCubit,
        ProductRatingAndReviewState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            alignment: const AlignmentDirectional(.7, .61),
            children: [
              ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  late double ratingValue;
                  late int ratingCountr;
                  switch (index) {
                    case 0:
                      ratingValue = 5;
                      ratingCountr = cub.productReviewsModel!.totalReview!;
                    case 1:
                      ratingValue = 4;
                      ratingCountr = cub.productReviewsModel!.totalReview!;

                    case 2:
                      ratingValue = 3;
                      ratingCountr = cub.productReviewsModel!.totalReview!;

                    case 3:
                      ratingValue = 2;
                      ratingCountr = cub.productReviewsModel!.totalReview!;

                    case 4:
                      ratingValue = 1;
                      ratingCountr = cub.productReviewsModel!.totalReview!;
                  }
                  return RowRatingBarItemBuilder(
                    rateValue: ratingValue,
                    rateCounter: ratingCountr,
                    allRateCounter: cub.productReviewsModel!.totalReview!,
                  );
                },
              ),
              SizedBox(
                height: 90,
                width: 250,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.end,
                  textBaseline: TextBaseline.ideographic,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '4.8',
                      style: TextStyles.textRateValueInProductDetailsStyle
                          .copyWith(
                        fontSize: 50,
                        height: 1.5,
                        fontFamily: FontFamily.bitter900,
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                        textAlign: TextAlign.end,
                        '/',
                        style: TextStyles
                            .textRecommendationsInProductDetailsStyle
                            .copyWith(fontSize: 20)),
                    const SizedBox(width: 4.0),
                    Text(
                      '5',
                      style: TextStyles.textRateValueInProductDetailsStyle
                          .copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
