import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part2/row_for_chose_color_and_discount_percentage.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part3/price_info_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part3/text_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/reviews/rate_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/row_rating_and_recommendations.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part5/description_and_spcial_info.dart';
import 'package:betak_store_app/core/functions/show_bottom_sheet_function.dart';
import 'package:flutter/material.dart';

class AllInfoProductDetails extends StatelessWidget {
  const AllInfoProductDetails({
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
        const SizedBox(height: 20.0),
        TextInProductDetails(
          text: productResults.title!,
        ),
        const SizedBox(height: 20.0),
        PriceInfoInProductDetails(productResults: productResults),
        RowRatingAndRecommendations(
          onTap: () => showBottomSheetBody(context, const RateBodyView()),
          productResults: productResults,
        ),
        DescriptionAndDelivery(
          productResults: productResults,
        ),
      ],
    );
  }
}
