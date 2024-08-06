import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/items_in_product_Item/add_to_my_cart_product_button.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/items_in_product_Item/go_to_product_all_info_button.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/items_in_product_Item/image_in_product.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/items_in_product_Item/info_product.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/items_in_product_Item/precentage_widget.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class ProductItemBuilder extends StatelessWidget {
  const ProductItemBuilder({
    super.key,
    this.index = 1,
    required this.onTapLove,
    required this.onTapGoProductAllInfo,
    this.isDiscount = false,
    required this.imageProduct,
  });
  final int index;
  final String imageProduct;
  final void Function()? onTapLove;
  final void Function()? onTapGoProductAllInfo;
  final bool isDiscount;
  @override
  Widget build(BuildContext context) {
    double heighBodyProduct = 300;
    // double widthBodyProduct = kWidth(context) * .456;
    return Container(
      // width: kWidth(context) * .456,
      height: heighBodyProduct,
      padding: const EdgeInsetsDirectional.only(
        top: 8.0,
        bottom: 8.0,
        start: 8.0,
        end: 8.0,
      ),
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
                      ImageProductInHome(
                        imageProduct: imageProduct,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PercentageWidget(
                              textDiscount: '25',
                              isDiscount: AssetsImages
                                              .listCategoriesInHome[index] ==
                                          AssetsImages
                                              .listCategoriesInHome[0] ||
                                      AssetsImages
                                              .listCategoriesInHome[index] ==
                                          AssetsImages
                                              .listCategoriesInHome[3] ||
                                      AssetsImages
                                              .listCategoriesInHome[index] ==
                                          AssetsImages
                                              .listCategoriesInHome[5] ||
                                      AssetsImages
                                              .listCategoriesInHome[index] ==
                                          AssetsImages.listCategoriesInHome[7]
                                  ? isDiscount == true
                                  : isDiscount == false,
                            ),
                            AddToMyCartProductButton(
                              onTap: onTapLove,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const InfoProduct(),
                ],
              ),
            ),
          ),
          GoToProductAllInfoButton(
            index: index,
            onTap: onTapGoProductAllInfo,
          ),
        ],
      ),
    );
  }
}
