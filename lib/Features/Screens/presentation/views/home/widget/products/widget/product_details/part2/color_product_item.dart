import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ColorProductItem extends StatelessWidget {
  const ColorProductItem({
    super.key,
    this.onTapChoseColor,
    this.productModel,
    this.index = 0,
    this.height = 30,
    this.width = 30,
    this.colorIndex = 0,
    this.colorForItemInCart = false,
    this.colorFoItemInCartSelected = '',
  });
  final void Function()? onTapChoseColor;
  final ProductModel? productModel;
  final int index;
  final int colorIndex;
  final bool colorForItemInCart;
  final String colorFoItemInCartSelected;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapChoseColor,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: colorIndex == index ? Colors.white : Colors.transparent,
            width: .5,
          ),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: colorForItemInCart == false
                  ? CachedNetworkImageProvider(productModel?.variants != null
                      ? productModel!.variants![index].thumbnail.toString()
                      : productModel!.thumbnails![index].last.toString())
                  : CachedNetworkImageProvider(colorFoItemInCartSelected)),
        ),
      ),
    );
  }
}
