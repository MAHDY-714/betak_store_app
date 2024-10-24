import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part1/swich_images_product_item_builder.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwichImagesProductListView extends StatelessWidget {
  const SwichImagesProductListView(
      {super.key,
      required this.index,
      this.onTapSwichImagesProduct,
      required this.productResults});
  final int index;
  final void Function()? onTapSwichImagesProduct;
  final ProductResults productResults;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: kWidth(context) * .7,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return SwichImagesProductItemBuilder(
            imageProduct: productResults.images![index].last.toString(),
            onTapSwichImagesProduct: () {
              BlocProvider.of<ProductDetailsCubit>(context)
                  .changeImagePreview(index: index);
              log(productResults.images![index].last.toString());
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 4,
          );
        },
        itemCount: productResults.images!.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
