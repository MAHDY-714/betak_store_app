import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

class ShowRatingButton extends StatelessWidget {
  const ShowRatingButton({
    super.key,
    required this.onTap,
    required this.productModel,
  });

  final void Function()? onTap;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: productModel.rating != null && productModel.rating != 0,
      builder: (context) => InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Show Ratings ▲',
              style: TextStyles.textStyle9Blue,
            ),
            Container(
              height: .7,
              width: 110,
              color: AppColor.sky2Color,
            ),
          ],
        ),
      ),
      fallback: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'No Rating Yet',
            style: TextStyles.textStyle10R,
          ),
          Container(
            height: .7,
            width: 95,
            color: AppColor.errorBorderAndRemoveAndIcons,
          ),
        ],
      ),
    );
  }
}
