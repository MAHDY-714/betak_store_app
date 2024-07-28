import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class GoToProductAllInfoButton extends StatelessWidget {
  const GoToProductAllInfoButton({
    super.key,
    this.index = 1,
    required this.onTap,
  });
  final int index;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Align(
          alignment: const AlignmentDirectional(1.1, 1.05),
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsetsDirectional.only(start: 8.0, top: 8.0),
            decoration:
                Decorations.goToProductAllInfoButtonBoxDecorationsOutSide,
            child: Container(
              height: 35,
              width: 35,
              alignment: Alignment.center,
              decoration:
                  Decorations.goToProductAllInfoButtonBoxDecorationsInside(
                      images: AssetsImages.listCategoriesInHome[index]),
            ),
          ),
        ),
      ),
    );
  }
}
