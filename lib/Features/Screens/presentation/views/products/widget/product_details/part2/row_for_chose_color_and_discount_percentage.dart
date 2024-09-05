import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part2/chose_color_for_product.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part2/percentage_in_product_details.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class RowForChoseColorAndDiscountPercentage extends StatelessWidget {
  const RowForChoseColorAndDiscountPercentage({
    super.key,
    required this.textDiscount,
  });
  final double textDiscount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 8.0),
            child: Container(
              width: kWidth(context) * .75,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: AppColor.backgroundForAllItemsInProductDarkColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColor.backgroundImageCategore,
                  width: 1.0,
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Color',
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    // style: TextStyles.textInProductDetails,
                    style: TextStyles.textStyle16,
                  ),
                  ChoseColorForProduct(),
                ],
              ),
            ),
          ),
          PercentageInProductDetails(
            textDiscount: '${textDiscount.round()}',
          ),
        ],
      ),
    );
  }
}