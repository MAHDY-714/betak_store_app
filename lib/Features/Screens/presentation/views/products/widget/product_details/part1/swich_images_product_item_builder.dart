import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:flutter/material.dart';

class SwichImagesProductItemBuilder extends StatelessWidget {
  const SwichImagesProductItemBuilder({
    super.key,
    this.onTapSwichImagesProduct, required this.images,
  });

  final String images;
  final void Function()? onTapSwichImagesProduct;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapSwichImagesProduct,
      child: Container(
        width: 50.0,
        height: 50.0,
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsetsDirectional.all(4),
        decoration: Decorations.swichImagesProductBoxDecoration(
          images: images,
        ),
      ),
    );
  }
}
