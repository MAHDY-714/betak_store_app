import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ImageWidgetInProfile extends StatelessWidget {
  const ImageWidgetInProfile({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      child: Container(
        width: kWidth(context) * .4,
        clipBehavior: Clip.hardEdge,
        alignment: AlignmentDirectional.centerEnd,
        padding: const EdgeInsetsDirectional.all(8),
        decoration: Decorations.imageInProfileBoxDecorationsOutSide,
        child: Container(
            width: 100,
            height: 100,
            decoration: Decorations.imageInProfileBoxDecorationsInSide(
              image: image,
            )),
      ),
    );
  }
}
