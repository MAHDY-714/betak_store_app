import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part1/swich_images_product_item_builder.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class SwichImagesProductListView extends StatelessWidget {
  const SwichImagesProductListView(
      {super.key, required this.index, this.onTapSwichImagesProduct});
  final int index;
  final void Function()? onTapSwichImagesProduct;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: kWidth(context) * .7,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return SwichImagesProductItemBuilder(
            images: AssetsImages.listCategoriesInHome[index],
            onTapSwichImagesProduct: () {
              kIndex = index;
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 4,
          );
        },
        itemCount: AssetsImages.listCategoriesInHome.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
