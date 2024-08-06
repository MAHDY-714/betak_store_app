import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ImageInMyCartItem extends StatelessWidget {
  const ImageInMyCartItem({
    super.key,
    required this.height,
    required this.image,
  });

  final double height;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: kWidth(context) * .35,
      alignment: Alignment.center,
      decoration: Decorations.cartItemBoxDecorations(images: image),
    );
  }
}
