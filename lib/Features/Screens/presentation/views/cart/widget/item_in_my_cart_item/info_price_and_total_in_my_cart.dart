import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class InfoPriceAndTotalInMyCart extends StatelessWidget {
  const InfoPriceAndTotalInMyCart({
    super.key,
    required this.title,
    required this.price,
    this.style = true,
  });
  final String title;
  final double price;
  final bool style;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          maxLines: 1,
          style: TextStyles.textStyle10W60.copyWith(
            fontSize:
                kWidthCondtions(context, valueIsTrue: 10.0, valueIsFalse: 13.0),
          ),
        ),
        Text(
          '\$${price.round()}',
          maxLines: 1,
          style: style
              ? TextStyles.textPriceInItemMyCartStyle11.copyWith(
                  color: AppColor.backgroundImageWhiteColor,
                  fontSize: kWidthCondtions(context,
                      valueIsTrue: 11.0, valueIsFalse: 14.0),
                )
              : TextStyles.priceTextStyle13.copyWith(
                  fontSize: kWidthCondtions(context,
                      valueIsTrue: 15.0, valueIsFalse: 20.0),
                ),
        ),
      ],
    );
  }
}
