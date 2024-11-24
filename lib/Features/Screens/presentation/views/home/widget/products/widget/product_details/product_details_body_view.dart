import 'package:betak_store_app/Features/Screens/data/models/my_cart_data_model/my_cart_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/my_cart_manager/my_cart_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/all_parts_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part1/image_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part6/row_for_specifications_info.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part7/payment_row.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:betak_store_app/core/widget/error_text_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsBodyView extends StatelessWidget {
  const ProductDetailsBodyView(
      {super.key, this.index = 0, required this.productModel});
  final int index;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<ProductDetailsCubit>(context);
    var cubiMyCart = BlocProvider.of<MyCartCubit>(context);
    // MyCartModel? myCartModel;
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (BuildContext context, ProductDetailsState state) {
        MyCartModel? myCartModel = cubiMyCart.myCartModelData(
          productModel: productModel,
          colorIndex: cubi.colorIndex,
        );

        return Column(
          children: [
            ConditionalBuilder(
              condition: cubi.productResults != null,
              builder: (context) => Expanded(
                child: SizedBox(
                  width: kWidth(context),
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        backgroundColor: AppColor.backgroundLayer2,
                        leading: const SizedBox(width: 0.0),
                        elevation: 0,
                        pinned: false,
                        centerTitle: false,
                        expandedHeight: kHeight(context) * .42,
                        surfaceTintColor: AppColor.backgroundLayer2,
                        flexibleSpace: FlexibleSpaceBar(
                          background: ImageInProductDetails(
                            index: cubi.imageIndex,
                            productResults: cubi.productResults!,
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: AllPartsInProductDetails(
                            productModel: productModel,
                            productResults: cubi.productResults!),
                      ),
                      SliverToBoxAdapter(
                        child: cubi.productResults?.specifications != null
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: RowForSpecificationsInfoWidget(
                                    productResults: cubi.productResults!))
                            : const SizedBox(height: 0.0, width: 0.0),
                      ),
                    ],
                  ),
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
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: PaymentRow(
                onTapPayment: () {
                  if (cubi.productResults != null) {
                    GoRouter.of(context).push(
                      AppRouter.kCartBodyView,
                      extra: myCartModel,
                    );
                  }
                },
                onTapMyCart: () {},
                iconPath: BlocProvider.of<MyCartCubit>(context).iconPath,
                productModel: productModel,
                colorIndex: cubi.colorIndex,
              ),
            ),
          ],
        );
      },
    );
  }
}
