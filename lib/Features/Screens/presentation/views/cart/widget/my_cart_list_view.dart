import 'package:flutter/material.dart';

import '../../../../../../core/utils/images.dart';
import '../../../../data/models/my_cart_data_model/my_cart_model.dart';
import 'my_cart_item.dart';

class MyCartListView extends StatelessWidget {
  const MyCartListView({
    super.key,
    required this.productInfoInMyCartModel,
  });
  final MyCartModel productInfoInMyCartModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return MyCartItemBuilder(
            price: productInfoInMyCartModel.price,
            total: productInfoInMyCartModel.totalPrice(),
            image: AssetsImages.listCategoriesInHome[index],
            name: productInfoInMyCartModel.name,
            quantity: productInfoInMyCartModel.quantity,
          );
        },
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: AssetsImages.listCategoriesInHome.length,
      ),
    );
  }
}
