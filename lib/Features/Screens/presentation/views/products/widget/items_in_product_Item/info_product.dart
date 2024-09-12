import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part2/chose_color_for_product.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
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
        height: kHeight(context) >= 770 && kHeight(context) <= 810 ? 100 : 130,
        width: kWidth(context),
        alignment: AlignmentDirectional.centerStart,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: const Color(0xFF507EFF).withOpacity(.04),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productModel!.title.toString(),
              maxLines:
                  kHeight(context) >= 770 && kHeight(context) <= 810 ? 2 : 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.nameProductStyleInInLayer2.copyWith(
                fontSize: kHeight(context) >= 770 && kHeight(context) <= 810
                    ? 10
                    : 13,
              ),
            ),
            Container(
                width: 70,
                height: 30,
                padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  // color: AppColor.backgroundForAllItemsInProductDarkColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColor.backgroundLayer2,
                    width: .5,
                  ),
                ),
                child: const ChoseColorForProduct()),
            Row(
              children: [
                Text(
                  '${productModel!.price!.round()}\$',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.priceStyleInInLayer2.copyWith(
                    fontSize: kHeight(context) >= 770 && kHeight(context) <= 810
                        ? 13
                        : 16,
                  ),
                ),
                if (productModel!.priceWas != null) const SizedBox(width: 4),
                if (productModel!.priceWas != null)
                  Text(
                    '${productModel!.priceWas!.round()}\$',
                    style: TextStyles.priceWasInProductDetailsStyle.copyWith(
                        color: AppColor.errorBorderAndRemoveAndIcons,
                        fontSize:
                            kHeight(context) >= 770 && kHeight(context) <= 810
                                ? 6
                                : 9),
                  ),
              ],
            ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
