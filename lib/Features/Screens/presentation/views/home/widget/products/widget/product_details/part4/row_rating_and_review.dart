import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/row_for_rate.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class RowRatingAndReviewsInProductDetails extends StatelessWidget {
  const RowRatingAndReviewsInProductDetails(
      {super.key,
      this.onTap,
      required this.productResults,
      required this.productModel});
  final void Function()? onTap;
  final ProductResults productResults;
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    String rating = double.parse(
            productResults.rating != null ? productResults.rating! : '0.00')
        .toStringAsFixed(2);
    int reviews = double.parse(
            productResults.reviews != null ? productResults.reviews! : '0')
        .round();
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kPaddingInAllInsideProductDetailsHorizontal,
          vertical: kPaddingInAllInsideProductDetailsVertical),
      child: Container(
        width: kWidth(context) * .75,
        padding: const EdgeInsets.all(8),
        decoration: Decorations
            .rowForRateAndRecomendationsInProductDetailsBoxDecorations,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowForRate(
              rateValue: double.parse(rating),
              rateCounter: reviews,
              onTap: onTap,
              productModel: productModel,
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
