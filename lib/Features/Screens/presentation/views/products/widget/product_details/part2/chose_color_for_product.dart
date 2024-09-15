import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChoseColorForProduct extends StatelessWidget {
  const ChoseColorForProduct(
      {super.key, this.onTapChoseColor, required this.productModel});
  final void Function()? onTapChoseColor;
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: kWidth(context) * .5,
      padding: const EdgeInsetsDirectional.only(start: 4, top: 2, bottom: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadiusDirectional.circular(20),
      ),
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              BlocProvider.of<ProductDetailsCubit>(context)
                  .choseProductColor(index: index);
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: BlocProvider.of<ProductDetailsCubit>(context)
                              .colorIndex ==
                          index
                      ? Colors.white
                      : Colors.transparent,
                  width: .5,
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                      productModel.variants != null
                          ? productModel.variants![index].thumbnail.toString()
                          : productModel.thumbnails![index].last.toString()),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 3),
        itemCount:
            productModel.variants != null ? productModel.variants!.length : 1,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
