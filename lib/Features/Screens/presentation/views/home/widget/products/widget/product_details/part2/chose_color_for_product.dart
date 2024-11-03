import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part2/color_product_item.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChoseColorForProduct extends StatelessWidget {
  const ChoseColorForProduct({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<ProductDetailsCubit>(context);
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
          return ColorProductItem(
            index: index,
            colorIndex: cubi.colorIndex,
            productModel: productModel,
            onTapChoseColor: () {
              cubi.choseProductColor(index: index);
            },
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
