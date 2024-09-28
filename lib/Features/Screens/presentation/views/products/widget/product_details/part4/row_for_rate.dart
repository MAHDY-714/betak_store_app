import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/show_rating_button.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class RowForRate extends StatelessWidget {
  const RowForRate({
    super.key,
    required this.rateValue,
    required this.rateCounter,
    this.onTap,
    required this.productModel,
  });
  final double rateValue;
  final int rateCounter;
  final void Function()? onTap;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    double iconSize = kWidthCondtions(
      context,
      valueIsTrue: 15.0,
      valueIsFalse: 20.0,
    );
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                kRating(
                  rating: rateValue,
                ),
                style: TextStyles.textStyle20,
              ),
              const SizedBox(width: 8),
              Text(
                '$rateValue',
                // '4.99',
                style: kWidthCondtions(
                  context,
                  valueIsTrue: TextStyles.priceTextStyle18,
                  valueIsFalse:
                      TextStyles.priceTextStyle18.copyWith(fontSize: 25),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Image(
                  height: iconSize,
                  width: iconSize,
                  color: AppColor.amberColor,
                  image: const AssetImage(AssetsImages.profileIcon)),
              const SizedBox(width: 8),
              Text(
                '$rateCounter',
                // '9999999999',
                style: kWidthCondtions(
                  context,
                  valueIsTrue: TextStyles.textStyle11,
                  valueIsFalse: TextStyles.textStyle16,
                ),
              ),
              const Spacer(),
              ShowRatingButton(
                onTap: onTap,
                productModel: productModel,
              )
            ],
          ),
        ],
      ),
    );
  }
}
