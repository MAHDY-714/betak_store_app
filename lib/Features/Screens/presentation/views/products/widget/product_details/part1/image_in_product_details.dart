import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageInProductDetails extends StatelessWidget {
  const ImageInProductDetails({
    super.key,
    required this.index,
    required this.child,
    required this.productResults,
  });

  final int index;
  final Widget child;
  final ProductResults productResults;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context) * .4,
      width: kWidth(context),
      decoration: BoxDecoration(
        color: AppColor.backgroundImageCategore,
        border: const BorderDirectional(
          bottom: BorderSide(
            color: Colors.white70,
            width: 2,
          ),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: const Alignment(.1, -.3),
          image: CachedNetworkImageProvider(
              productResults.images![index].last.toString()),
        ),
      ),
      child: child,
    );
  }
}
// BlocProvider.of<ProductDetailsCubit>(context).imageIndex
