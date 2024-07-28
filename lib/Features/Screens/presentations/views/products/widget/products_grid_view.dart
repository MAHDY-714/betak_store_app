import 'package:betak_store_app/Features/Screens/data/my_cart_data/models/item_info_model.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_item_builder.dart';
import 'package:betak_store_app/core/utils/app_router.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductsGridView extends StatelessWidget {
  ProductsGridView({
    super.key,
  });
  final productInfoInMyCartModel = ProductInfoInMyCartModel(
    image: 'Sofa',
    name: 'ikea Sofa 200CM',
    price: 300,
    quantity: 9,
  );
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        //1.25 => width
        //2.0 => height
        //childAspectRatio:- The ratio of the cross-axis[1.25] to the main-axis[2.0] extent of each child
        childAspectRatio: 1.25 / 2.0,
      ),
      itemBuilder: (context, index) {
        return ProductItemBuilder(
          index: index,
          onTapLove: () {},
          onTapGoProductAllInfo: () {
            GoRouter.of(context).push(
              AppRouter.kProductDetailsView,
              extra: productInfoInMyCartModel,
            );
          },
          imageProduct: AssetsImages.listCategoriesInHome[index],
        );
      },
      itemCount: AssetsImages.listCategoriesInHome.length,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}
