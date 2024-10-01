import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_rating_and_review_cubit/product_rating_and_review_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/reviews_details/review_details_item_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/row_rating_widget.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
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
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: RowRatingWidget(
                productRatingAndReviewsModel: cub.productRatingAndReviewsModel,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: kPaddingInAllInsideProductDetailsHorizontal,
                  vertical: kPaddingInAllInsideProductDetailsVertical,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reviews Comments',
                      style: TextStyles.priceStyleInInLayer2,
                    ),
                    ReviewDetailsItemBuilder(
                        productRatingAndReviewsModel:
                            cub.productRatingAndReviewsModel),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
