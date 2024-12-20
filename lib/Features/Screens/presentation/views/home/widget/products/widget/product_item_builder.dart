import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/items_in_product_Item/add_to_my_cart_product_button.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/items_in_product_Item/add_to_my_wish_list_product_button.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/items_in_product_Item/go_to_product_all_info_button.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/items_in_product_Item/image_in_product.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/items_in_product_Item/info_product.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/items_in_product_Item/precentage_widget.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ProductItemBuilder extends StatelessWidget {
  const ProductItemBuilder({
    super.key,
    this.index = 0,
    required this.onTapAddToMyCart,
    required this.onTapGoProductAllInfo,
    this.isDiscount = false,
    required this.imageProduct,
    required this.productModel,
  });
  final int index;
  final String imageProduct;
  final void Function()? onTapAddToMyCart;
  final void Function()? onTapGoProductAllInfo;
  final bool isDiscount;
  final List<ProductModel>? productModel;

  @override
  Widget build(BuildContext context) {
    double heighBodyProduct =
        kHeightCondtions(context, valueIsTrue: 305.0, valueIsFalse: 350.0);
    // double widthBodyProduct = kWidth(context) * .456;
    return Container(
      // width: kWidth(context) * .456,
      height: heighBodyProduct,
      decoration: Decorations.outsideproductHomeItemBuilderBoxDecorations,
      child: Stack(
        alignment: const AlignmentDirectional(0, 1),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            clipBehavior: Clip.antiAlias,
            child: Container(
              height: heighBodyProduct,
              clipBehavior: Clip.antiAlias,
              decoration:
                  Decorations.insideProductHomeItemBuilderBoxDecorations,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      ImageProductInItemBuilder(
                        imageProduct: imageProduct,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: kHeightCondtions(context,
                              valueIsTrue: 145.0, valueIsFalse: 184.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  if (productModel?[index].percentageOff !=
                                      null)
                                    PercentageWidget(
                                      textValue: productModel![index]
                                          .percentageOff!
                                          .round(),
                                      // textValue: 100,
                                      textDiscount:
                                          '${productModel![index].percentageOff!.round()}',
                                      isDiscount:
                                          productModel?[index].percentageOff !=
                                                  null
                                              ? true
                                              : false,
                                    ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    child: AddToMyWishListProductButton(
                                      onTap: () {
                                        log('${kHeight(context).round()}');
                                        log('${kWidth(context).round()}');
                                      },
                                    ),
                                  ),
                                  Align(
                                    child: AddToMyCartProductButton(
                                      productModel: productModel![index],
                                      onTap: () {
                                        log('${kHeight(context).round()}');
                                        log('${kWidth(context).round()}');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  InfoProduct(
                    productModel: productModel![index],
                  ),
                ],
              ),
            ),
          ),
          GoToProductAllInfoButton(
            index: index,
            onTap: onTapGoProductAllInfo,
            productModel: productModel![index],
          ),
        ],
      ),
    );
  }
}
