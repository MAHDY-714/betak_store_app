import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part3/text_in_product_details.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part5/description_text.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part5/special_info.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DescriptionAndSpecialInfo extends StatelessWidget {
  const DescriptionAndSpecialInfo({super.key, required this.productResults});
  final ProductResults productResults;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextInProductDetails(
          text: 'Description',
          style: TextStyles.priceStyleInInLayer2,
        ),
        // const SizedBox(height: 8.0),
        DescriptionText(
          text: productResults.description.toString(),
        ),
        if (productResults.bullets != null)
          SpecialInfo(
            infoList: productResults.bullets!,
            itemCount: productResults.bullets!.length,
            title: 'Material & used',
          ),
        if (productResults.highlights != null)
          SpecialInfo(
            infoList: productResults.highlights!,
            itemCount: productResults.highlights!.length,
            title: 'Highlights',
          ),
      ],
    );
  }
}
