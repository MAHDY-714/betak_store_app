import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      height: 140,
      width: kWidth(context) * .454,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: CachedNetworkImage(
        imageUrl: imageProduct,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            const CircleLoadingIndicatorWidget(),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
          color: AppColor.focusederrorBorderAndRemove,
          size: 40,
        ),
      ),
    );
  }
}
