import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part3/text_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part5/description_text.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class DescriptionAndDelivery extends StatelessWidget {
  const DescriptionAndDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
          TextInProductDetails(
                text: 'Description',
                style: TextStyles.priceStyleInInLayer2,
              ),
              DescriptionText(
                text: kDescription,
              ),
              SizedBox(height: 20.0),
              TextInProductDetails(
                text: 'Delivering',
                style: TextStyles.priceStyleInInLayer2,
              ),
              TextInProductDetails(
                text: kDelivery,
                style: TextStyles.textRecommendationsInProductDetailsStyle,
              ),
              SizedBox(height: 20.0),
      ],
    );
  }
}