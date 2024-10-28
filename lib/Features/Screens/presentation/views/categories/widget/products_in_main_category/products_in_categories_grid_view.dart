import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_item_builder.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductsInCategoriesGridView extends StatelessWidget {
  const ProductsInCategoriesGridView(
      {super.key, required this.productModelFormCategories});
  final List<ProductModel> productModelFormCategories;
  @override
  Widget build(BuildContext context) {
    double height =
        kHeightCondtions(context, valueIsTrue: .905, valueIsFalse: .835);
    double width = kWidthCondtions(context, valueIsTrue: .5, valueIsFalse: 0.5);
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8, //padding vertical bettwen the items
        crossAxisSpacing: 8, //padding horizontal bettwen the items
        childAspectRatio: width / height,
      ),
      itemBuilder: (context, index) {
        return ProductItemBuilder(
          index: index,
          onTapLove: () {},
          onTapGoProductAllInfo: () async {
            GoRouter.of(context).push(
              AppRouter.kProductDetailsView,
              extra: productModelFormCategories[index],
            );
          },
          imageProduct:
              productModelFormCategories[index].thumbnails![0].last.toString(),
          productModel: productModelFormCategories[index],
        );
      },
      itemCount: productModelFormCategories.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}
