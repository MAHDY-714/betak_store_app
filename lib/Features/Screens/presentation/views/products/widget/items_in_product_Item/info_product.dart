import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class InfoProduct extends StatelessWidget {
  const InfoProduct({
    super.key,
    required this.productModel,
  });
  final ProductModel? productModel;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-.85, 1.18),
      child: Container(
        height: 95,
        width: kWidth(context) * .3,
        alignment: AlignmentDirectional.centerStart,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: const Color(0xFF507EFF).withOpacity(.04),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productModel!.title.toString(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.nameProductStyleInInLayer2,
            ),
            Text(
              '${productModel!.price!.round()}\$',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.priceStyleInInLayer2,
            ),
          ],
        ),
      ),
    );
  }
}
