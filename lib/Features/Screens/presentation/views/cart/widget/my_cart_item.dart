import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/my_cart_data_model/my_cart_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/my_cart_manager/my_cart_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/count_of_unit_widget.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/image_in_my_cart_item.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/info_price_and_total_in_my_cart.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/text_in_my_cart_item.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part2/color_product_item.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartItemBuilder extends StatelessWidget {
  const MyCartItemBuilder({
    super.key,
    this.myCartModel,
    this.productModel,
  });
  final MyCartModel? myCartModel;
  final ProductModel? productModel;
  @override
  Widget build(BuildContext context) {
    // var cubi = BlocProvider.of<MyCartCubit>(context);
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
            quantity: myCartModel!.quantity,
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
                    image: myCartModel!.image!,
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
                          title: myCartModel!.title.toString(),
                        ),
                        const Spacer(),
                        ColorProductItem(
                          productModel: productModel,
                          height: heightColorProductItem,
                          width: heightColorProductItem,
                          colorForItemInCart: true,
                          colorFoItemInCartSelected: myCartModel!.color!,
                        ),
                        const Spacer(),
                        InfoPriceAndTotalInMyCart(
                          title: 'Price: ',
                          price: myCartModel!.price ?? 0.0,
                        ),
                        InfoPriceAndTotalInMyCart(
                          title: 'Total: ',
                          price: myCartModel!.price! * 5,
                          style: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
