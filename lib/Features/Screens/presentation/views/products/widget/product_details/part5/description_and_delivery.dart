import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part3/text_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part5/description_text.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DescriptionAndDelivery extends StatelessWidget {
  const DescriptionAndDelivery({super.key, required this.productResults});
  final ProductResults productResults;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextInProductDetails(
          text: 'Description',
          style: TextStyles.priceStyleInInLayer2,
        ),
        DescriptionText(
          text: productResults.description.toString(),
        ),
        const SizedBox(height: 20.0),
        const TextInProductDetails(
          text: 'Delivering',
          style: TextStyles.priceStyleInInLayer2,
        ),
        TextInProductDetails(
          text:
              'Earliest delivery date: ${productResults.fulfillment!.options![0].deliveryDate ?? 'There is no specific delivery date '}',
          style: TextStyles.textRecommendationsInProductDetailsStyle,
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
