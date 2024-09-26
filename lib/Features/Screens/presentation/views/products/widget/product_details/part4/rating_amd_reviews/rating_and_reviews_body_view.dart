import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_rating_and_review_cubit/product_rating_and_review_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/row_rating_widget.dart';
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
        return Column(
          children: [
            RowRatingWidget(
              productRatingAndReviewsModel: cub.productReviewsModel,
            ),
          ],
        );
      },
    );
  }
}
