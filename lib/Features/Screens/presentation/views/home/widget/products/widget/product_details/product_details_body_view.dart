import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/all_info_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part1/image_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part6/row_for_more_info.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part7/payment_row.dart';
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
                      child: ImageInProductDetails(
                        index: cub.imageIndex,
                        productResults: cub.productResults!,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: AllInfoProductDetails(
                          productModel: productModel,
                          productResults: cub.productResults!),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: RowForMoreInfo(
                                productResults: cub.productResults!),
                          ),
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
