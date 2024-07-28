import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ImageProductInHome extends StatelessWidget {
  const ImageProductInHome({
    super.key, required this.imageProduct,
  });

  final String imageProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: kWidth(context) * .454,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          isAntiAlias: true,
          scale: 3,
          fit: BoxFit.cover,
          image: AssetImage(
            imageProduct,

          ),
        ),
      ),
    );
  }
}
