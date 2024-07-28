import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part1/app_bar_in_images_product.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part1/image_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part1/swich_images_product_list_view.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part2/row_for_chose_color_and_discount_percentage.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part3/price_info_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part3/text_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part4/reviews/reviews_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part4/row_rating_and_recommendations.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part5/description_and_delivery.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part6/row_for_more_info.dart';
import 'package:betak_store_app/core/functions/show_bottom_sheet_function.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ProductDetailsBodyView extends StatelessWidget {
  const ProductDetailsBodyView({super.key, this.index = 0});
  final int index;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageInProductDetails(
                index: kIndex,
                child: Container(
                  height: kHeight(context) * .33,
                  width: kWidth(context) * .5,
                  padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 10.0,
                    horizontal: 12.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppBarInImagesProduct(),
                      SwichImagesProductListView(index: kIndex),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RowForChoseColorAndDiscountPercentage(
                textDiscount: 25,
              ),
              const SizedBox(height: 20.0),
              const TextInProductDetails(),
              const SizedBox(height: 20.0),
              const PriceInfoInProductDetails(
                price: 9000,
                priceWas: 11250,
                priceSave: 2250,
              ),
              RowRatingAndRecommendations(
                rateValue: 4.8,
                rateCounter: 2404,
                recommendationCounterPositive: 1244,
                recommendationCounterNegative: 187,
                onTap: () => showBottomSheetBody(context, const RateBodyView()),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Column(
            children: [
              DescriptionAndDelivery(),
              SizedBox(height: 20.0),
              RowForMoreInfo(),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ],
    );
  }
}
