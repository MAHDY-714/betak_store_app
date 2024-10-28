import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part2/row_for_chose_color_and_discount_percentage.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part3/price_info_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part3/text_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/row_rating_and_review.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part5/description_and_special_info.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AllPartsInProductDetails extends StatelessWidget {
  const AllPartsInProductDetails({
    super.key,
    required this.productModel,
    required this.productResults,
  });

  final ProductModel productModel;
  final ProductResults productResults;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowForChoseColorAndDiscountPercentage(
          productModel: productModel,
          productResults: productResults,
        ),
        const SizedBox(height: kPaddingInAllInsideProductDetailsVertical),
        TextInProductDetails(
          text: productResults.title!,
        ),
        const SizedBox(height: kPaddingInAllInsideProductDetailsVertical),
        PriceInfoInProductDetails(productResults: productResults),
        RowRatingAndReviewsInProductDetails(
          onTap: () {
            GoRouter.of(context).push(
              AppRouter.kRatingAndReviewsView,
              extra: productModel,
            );
          },
          productResults: productResults,
          productModel: productModel,
        ),
        DescriptionAndSpecialInfo(
          productResults: productResults,
        ),
      ],
    );
  }
}
