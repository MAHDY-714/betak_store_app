import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/images.dart';
import 'my_cart_item.dart';

class MyCartListView extends StatelessWidget {
  const MyCartListView({
    super.key,
    this.productModel,
    this.productResults,
    required this.quantity, required this.color,
  });
  final ProductModel? productModel;
  final ProductResults? productResults;
  final int quantity;
  final String color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return MyCartItemBuilder(
            productModel: productModel,
            productResults: productResults,
            quantity: quantity,
            color: color,
          );
        },
        // physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: AssetsImages.listCategoriesInHome.length,
      ),
    );
  }
}
