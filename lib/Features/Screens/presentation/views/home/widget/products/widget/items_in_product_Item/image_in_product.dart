import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/cached_network_image_widget.dart';
import 'package:flutter/material.dart';

class ImageProductInItemBuilder extends StatelessWidget {
  const ImageProductInItemBuilder({
    super.key,
    required this.imageProduct,
  });

  final String imageProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          kHeightCondtions(context, valueIsTrue: 160.0, valueIsFalse: 200.0),
      width: kWidth(context),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(14),
          topStart: Radius.circular(14),
          bottomEnd: Radius.circular(0),
          bottomStart: Radius.circular(0),
        ),
      ),
      child: CachedNetworkImageWidget(imageProduct: imageProduct),
    );
  }
}
