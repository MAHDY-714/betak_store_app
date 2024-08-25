import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/my_cart_data_model/item_info_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part7/payment_row.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/product_details_body_view.dart';
import 'package:betak_store_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productInfoInMyCartModel});
  final ProductInfoInMyCartModel? productInfoInMyCartModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: ProductDetailsBodyView(),
      ),
      bottomNavigationBar: PaymentRow(
        onTapPayment: () {
          GoRouter.of(context).push(
            AppRouter.kCartBodyView,
            extra: productInfoInMyCartModel,
          );
          log(productInfoInMyCartModel!.price.round().toString());
          log(productInfoInMyCartModel!.quantity.round().toString());
          log(productInfoInMyCartModel!.totalPrice().round().toString());
          log(productInfoInMyCartModel!.image);
          log(productInfoInMyCartModel!.name);
        },
      ),
    );
  }
}
