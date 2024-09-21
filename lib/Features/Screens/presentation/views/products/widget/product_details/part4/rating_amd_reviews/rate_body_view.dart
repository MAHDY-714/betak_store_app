import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo_implement.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_rating_and_review_cubit/product_rating_and_review_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rate_bar_list_view.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RateAndReviewBodyView extends StatelessWidget {
  const RateAndReviewBodyView({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    // var cub = BlocProvider.of<ProductRatingAndReviewCubit>(context);
    return BlocProvider(
      create: (context) =>
          ProductRatingAndReviewCubit(getIt.get<HomeRepoImplement>())
            ..getProductReviewDetails(productId: productModel.productId!),
      child: Container(
        width: kWidth(context),
        height: kHeight(context) * .35,
        decoration: Decorations.rateAndReviewBodyViewBoxDecorations(),
        child: Container(
          decoration: Decorations.rateAndReviewBodyViewBoxDecorations(
              // bodyColor: const Color(0xFF0C0F19),
              ),
          width: kWidth(context),
          child: const RateAndReviewListView(),
        ),
      ),
    );
  }
}
