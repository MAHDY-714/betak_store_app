import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part1/app_bar_in_images_product.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part1/swich_images_product_list_view.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageInProductDetails extends StatefulWidget {
  const ImageInProductDetails({
    super.key,
    required this.index,
    required this.productResults,
  });

  final int index;
  final ProductResults productResults;

  @override
  State<ImageInProductDetails> createState() => _ImageInProductDetailsState();
}

class _ImageInProductDetailsState extends State<ImageInProductDetails>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late String currentImage;
  late String prevImage;
  @override
  void initState() {
    super.initState();
    currentImage = widget.productResults.images!.first.last.toString();
    prevImage = currentImage;
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      reverseDuration: const Duration(milliseconds: 400),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<ProductDetailsCubit>(context);
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        return Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      height: kHeight(context) * .42,
                      width: kWidth(context),
                      decoration: imageInProductDetailsBoxDecoration(
                        image: cubi.prevImage ??
                            widget.productResults.images![widget.index].last
                                .toString(),
                      ),
                    ),
                    AnimatedBuilder(
                        animation: animationController,
                        builder: (context, _) {
                          return ClipPath(
                            clipper: ImageInProductDetailsAnimated(
                                animationController.value),
                            child: Container(
                              height: kHeight(context) * .42,
                              width: kWidth(context),
                              decoration: imageInProductDetailsBoxDecoration(
                                image: cubi.currentImage ??
                                    widget.productResults.images![widget.index]
                                        .last
                                        .toString(),
                              ),
                            ),
                          );
                        }),
                  ],
                ),
                Container(
                  height: kHeight(context) * .42,
                  width: kWidth(context),
                  padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 10.0,
                    horizontal: 12.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppBarInImagesProduct(),
                      SwichImagesProductListView(
                        indexImageProductDetails: widget.index,
                        productResults: widget.productResults,
                        animationController: animationController,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class ImageInProductDetailsAnimated extends CustomClipper<Path> {
  final double value;
  ImageInProductDetailsAnimated(this.value);
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.addOval(
    //   Rect.fromCenter(
    //     center: Offset(size.width * .5, size.height * .5),
    //     width: size.width * 2 * value,
    //     height: size.height * 2 * value,
    //   ),
    // );
    path.addRect(Rect.fromPoints(
        Offset(0.0, size.height), Offset(size.width * 1 * value, 0.0)));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

// BlocProvider.of<ProductDetailsCubit>(context).imageIndex
BoxDecoration imageInProductDetailsBoxDecoration({required String image}) {
  return BoxDecoration(
    color: AppColor.backgroundImageWhiteColor,
    border: const BorderDirectional(
      bottom: BorderSide(
        color: Colors.white70,
        width: 2,
      ),
    ),
    image: DecorationImage(
      fit: BoxFit.cover,
      // alignment: const Alignment(.1, -.3),
      image: CachedNetworkImageProvider(image),
    ),
  );
}
