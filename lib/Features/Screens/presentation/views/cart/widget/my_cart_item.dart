import 'dart:developer';

import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/count_of_unit_widget.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/image_in_my_cart_item.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/info_price_and_total_in_my_cart.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/text_in_my_cart_item.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class MyCartItemBuilder extends StatelessWidget {
  const MyCartItemBuilder({
    super.key,
    required this.price,
    required this.total,
    required this.image,
    required this.name,
    required this.quantity,
  });

  final String image;
  final String name;
  final int quantity;
  final double price;
  final double total;
  @override
  Widget build(BuildContext context) {
    const double height = 185.0;
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 8.0),
      child: Container(
        height: height,
        width: kWidth(context),
        decoration: BoxDecoration(
          color: AppColor.backgroundForAllItemsInProductDarkColor,
          border: Border.all(color: AppColor.borderLogoSign, width: .8),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          children: [
            ImageInMyCartItem(
              height: height,
              image: image,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: height,
                width: kWidth(context) * .5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextInMyCartItem(
                      title: name,
                    ),
                    const Spacer(),
                    InfoPriceAndTotalInMyCart(
                      title: 'Price: ',
                      price: price,
                      style: TextStyles.textPriceInItemMyCartStyle10,
                    ),
                    InfoPriceAndTotalInMyCart(
                      title: 'Total: ',
                      price: total,
                      style: TextStyles.textStyle13,
                    ),
                    const SizedBox(height: 16),
                    CountOfUnitsAndRemoveItemWidget(
                      onTapAdd: () => log('add 1 unit'),
                      onTapMinus: () => log('remove 1 unit'),
                      onTapRemoveItem: () => log('remove The Item'),
                      quantity: quantity,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
