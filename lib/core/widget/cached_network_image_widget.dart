import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/images.dart';
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
        errorWidget: (context, url, error) => Center(
          child: Container(
            height: 70,
            width: 70,
            padding: const EdgeInsetsDirectional.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.redDeepColor.withOpacity(.03),
              border: Border.all(
                color: AppColor.redDeepColor,
                width: 3,
              ),
            ),
            child: const Image(
              color: AppColor.redDeepColor,
              image: AssetImage(
                AssetsImages.logo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
