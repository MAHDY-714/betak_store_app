import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:flutter/material.dart';

class GoToProductAllInfoButton extends StatelessWidget {
  const GoToProductAllInfoButton({
    super.key,
    this.index = 0,
    required this.onTap,
    required this.productModel,
  });
  final int index;
  final void Function()? onTap;
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Align(
          alignment: const AlignmentDirectional(1.0, 1.0),
          child: Container(
            width: 55,
            height: 55,
            padding: const EdgeInsetsDirectional.only(start: 7.0, top: 8.0),
            decoration:
                Decorations.goToProductAllInfoButtonBoxDecorationsOutSide(
                    urlImage: productModel.thumbnails![0].last, isImage: false),
            child: Container(
              width: 50,
              height: 50,
              padding: const EdgeInsetsDirectional.only(start: 8.0, top: 8.0),
              decoration:
                  Decorations.goToProductAllInfoButtonBoxDecorationsInside(
                      urlImage: productModel.thumbnails![0].last,
                      isImage: true),
            ),
          ),
        ),
      ),
    );
  }
}

//images: productModel.thumbnails![0].last