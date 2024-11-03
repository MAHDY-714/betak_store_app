import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/count_of_unit_widget.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/image_in_my_cart_item.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/info_price_and_total_in_my_cart.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/text_in_my_cart_item.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part2/color_product_item.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class MyCartItemBuilder extends StatelessWidget {
  const MyCartItemBuilder({
    super.key,
    required this.quantity,
    this.productModel,
    this.productResults,
    required this.color,
  });

  final ProductModel? productModel;
  final ProductResults? productResults;
  final int quantity;
  final String color;
  @override
  Widget build(BuildContext context) {
    // var cubi = BlocProvider.of<ProductDetailsCubit>(context);
    double height =
        kHeightCondtions(context, valueIsTrue: 140.0, valueIsFalse: 160.0);
    double heightColorProductItem =
        kHeightCondtions(context, valueIsTrue: 25.0, valueIsFalse: 30.0);

    return Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 4.0,
        bottom: 4.0,
        start: 8.0,
        end: 0.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CountOfUnitsAndRemoveItemWidget(
            onTapAdd: () => log('add 1 unit'),
            onTapMinus: () => log('remove 1 unit'),
            onTapRemoveItem: () => log('remove The Item'),
            quantity: quantity,
            height: height,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Container(
              height: height,
              // width: kWidth(context) * .85,

              decoration: Decorations.myCartItemBoxDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageInMyCartItem(
                    height: height,
                    image: productResults!.images![0].last.toString(),
                  ),
                  const SizedBox(width: 6.0),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                        vertical: 2.0, horizontal: 2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInMyCartItem(
                          title: productResults!.title.toString(),
                        ),
                        const Spacer(),
                        ColorProductItem(
                          index: 0,
                          productModel: productModel,
                          height: heightColorProductItem,
                          width: heightColorProductItem,
                          colorIndex: 0,
                          colorForItemInCart: true,
                          colorFoItemInCartSelected: color,
                        ),
                        const Spacer(),
                        InfoPriceAndTotalInMyCart(
                          title: 'Price: ',
                          price: productResults!.price ?? 0.0,
                        ),
                        InfoPriceAndTotalInMyCart(
                          title: 'Total: ',
                          price: productResults!.price! * quantity,
                          style: false,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
