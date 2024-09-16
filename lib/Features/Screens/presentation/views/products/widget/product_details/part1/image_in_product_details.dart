import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part1/app_bar_in_images_product.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part1/swich_images_product_list_view.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageInProductDetails extends StatelessWidget {
  const ImageInProductDetails({
    super.key,
    required this.index,
    required this.productResults,
  });

  final int index;
  final ProductResults productResults;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: kHeight(context) * .42,
          width: kWidth(context),
          decoration: BoxDecoration(
            color: AppColor.backgroundImageCategore,
            border: const BorderDirectional(
              bottom: BorderSide(
                color: Colors.white70,
                width: 2,
              ),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              alignment: const Alignment(.1, -.3),
              image: CachedNetworkImageProvider(
                  productResults.images![index].last.toString()),
            ),
          ),
          child: Container(
            height: kHeight(context) * .33,
            width: kWidth(context) * .5,
            padding: const EdgeInsetsDirectional.symmetric(
              vertical: 10.0,
              horizontal: 12.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppBarInImagesProduct(),
                SwichImagesProductListView(
                  index: kIndex,
                  productResults: productResults,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
// BlocProvider.of<ProductDetailsCubit>(context).imageIndex
