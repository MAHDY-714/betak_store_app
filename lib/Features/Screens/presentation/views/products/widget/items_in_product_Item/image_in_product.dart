import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/cached_network_image_widget.dart';
import 'package:flutter/material.dart';

class ImageProductInHome extends StatelessWidget {
  const ImageProductInHome({
    super.key,
    required this.imageProduct,
  });

  final String imageProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context) >= 770 && kHeight(context) <= 810 ? 130 : 170,
      width: kWidth(context),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(16),
          topStart: Radius.circular(16),
          bottomEnd: Radius.circular(0),
          bottomStart: Radius.circular(0),
        ),
      ),
      child: CachedNetworkImageWidget(imageProduct: imageProduct),
    );
  }
}
