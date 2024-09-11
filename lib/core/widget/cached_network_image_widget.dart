import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({
    super.key,
    required this.imageProduct,
    this.shapeIsCircle = false,
  });

  final String imageProduct;
  final bool shapeIsCircle;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
          // shape: BoxShape.circle,
          ),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
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
