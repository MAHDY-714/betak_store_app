import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part1/swich_images_product_item_builder.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwichImagesProductListView extends StatelessWidget {
  const SwichImagesProductListView({
    super.key,
    required this.indexImageProductDetails,
    required this.productResults,
    required this.animationController,
  });
  final int indexImageProductDetails;
  final ProductResults productResults;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<ProductDetailsCubit>(context);
    return Container(
      height: 50,
      width: kWidth(context) * .75,
      alignment: AlignmentDirectional.center,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return SwichImagesProductItemBuilder(
            imageProduct: productResults.images![index].last.toString(),
            onTapSwichImagesProduct: () {
              cubi.changeImagePreview(
                  index: index,
                  animationController: animationController,
                  productResults: productResults);
              log(
                productResults.images![index].last.toString(),
              );
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
