import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo_implement.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_rating_and_review_cubit/product_rating_and_review_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/rating_and_reviews/rating_and_reviews_body_view.dart';
import 'package:betak_store_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RatingAndReviewsView extends StatelessWidget {
  const RatingAndReviewsView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductRatingAndReviewCubit(getIt.get<HomeRepoImplement>())
            ..getProductReviewDetails(productId: productModel.productId!),
      child: Scaffold(
        body: SafeArea(
          child: RatingAndReviewsBodyView(
            productModel: productModel,
          ),
        ),
      ),
    );
  }
}
