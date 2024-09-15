import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part1/app_bar_in_images_product.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part1/image_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part1/swich_images_product_list_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part2/row_for_chose_color_and_discount_percentage.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part3/price_info_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part3/text_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/reviews/reviews_body_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/row_rating_and_recommendations.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part5/description_and_delivery.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part6/row_for_more_info.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part7/payment_row.dart';
import 'package:betak_store_app/core/functions/show_bottom_sheet_function.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:betak_store_app/core/widget/error_text_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsBodyView extends StatelessWidget {
  const ProductDetailsBodyView(
      {super.key, this.index = 0, required this.productModel});
  final int index;
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    var cub = BlocProvider.of<ProductDetailsCubit>(context);
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (BuildContext context, ProductDetailsState state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ConditionalBuilder(
              condition: cub.productResults != null,
              builder: (context) => SizedBox(
                height: kHeight(context) * .85,
                width: kWidth(context),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageInProductDetails(
                            index: cub.imageIndex,
                            productResults: cub.productResults!,
                            child: Container(
                              height: kHeight(context) * .33,
                              width: kWidth(context) * .5,
                              padding: const EdgeInsetsDirectional.symmetric(
                                vertical: 10.0,
                                horizontal: 12.0,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const AppBarInImagesProduct(),
                                  SwichImagesProductListView(
                                    index: kIndex,
                                    productResults: cub.productResults!,
                                  ),
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
                          RowForChoseColorAndDiscountPercentage(
                            textDiscount: 25,
                            productModel: productModel,
                            productResults: cub.productResults!,
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
                            onTap: () => showBottomSheetBody(
                                context, const RateBodyView()),
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
                ),
              ),
              fallback: (context) => state is! GetProductDetailsFailureState
                  ? SizedBox(
                      height: kHeight(context) * .85,
                      width: kWidth(context),
                      child: const CircleLoadingIndicatorWidget())
                  : SizedBox(
                      height: kHeight(context) * .85,
                      width: kWidth(context),
                      child: Center(
                          child: ErrorTextWidget(
                              errorMessage: state.errorMessage))),
            ),
            PaymentRow(
              onTapPayment: () {
                cub.getProductDetails(productId: '321035976');
              },
            ),
          ],
        );
      },
    );
  }
}
