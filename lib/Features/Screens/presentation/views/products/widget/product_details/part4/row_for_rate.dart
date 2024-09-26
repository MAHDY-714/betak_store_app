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
    double iconSize = rateCounter.toString().length <= 6 ? 18.0 : 15.0;
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
                style: TextStyles.priceTextStyle18,
              ),
              const SizedBox(width: 8),
              Text(
                '$rateValue',
                style: TextStyles.textRateValueInProductDetailsStyle,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Image(
                  height: iconSize,
                  width: iconSize,
                  color: AppColor.amberColor,
                  image: const AssetImage(
                    AssetsImages.profileIcon,
                  )),
              const SizedBox(width: 8),
              Text(
                '$rateCounter',
                // '9999999999',
                style: rateCounter.toString().length <= 6
                    ? TextStyles.textStyle11
                    : TextStyles.textStyle11,
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
