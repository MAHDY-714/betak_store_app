import 'dart:developer';

import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part3/text_in_product_details.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class SpecialInfo extends StatelessWidget {
  const SpecialInfo({
    super.key,
    required this.title,
    required this.infoList,
    required this.itemCount,
  });

  final String title;
  final List<dynamic> infoList;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    log(infoList.length.toString());
    log(infoList.length.toString());
    return Column(
      children: [
        TextInProductDetails(
          text: title,
          style: TextStyles.priceStyleInInLayer2,
        ),
        const SizedBox(height: 8),
        Container(
          height: itemCount <= 4
              ? 100
              : itemCount > 5 && itemCount <= 7
                  ? 150
                  : 180,
          width: kWidth(context),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: Decorations
              .rowForRateAndRecomendationsInProductDetailsBoxDecorations,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return TextInProductDetails(
                text: infoList[index].toString(),
                style: TextStyles.textRecommendationsInProductDetailsStyle,
              );
            },
            shrinkWrap: true,
            itemCount: itemCount,
          ),
        ),
      ],
    );
  }
}
