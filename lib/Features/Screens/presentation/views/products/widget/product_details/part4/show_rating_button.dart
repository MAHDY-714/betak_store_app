import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
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
            Text(
              'Show Ratings ▲',
              style: kWidthCondtions(
                context,
                valueIsTrue: TextStyles.textStyle10Blue,
                valueIsFalse: TextStyles.textStyle13Blue,
              ),
            ),
            const SizedBox(height: 2),
            Container(
              height: .7,
              width: kWidthCondtions(
                context,
                valueIsTrue: 115.0,
                valueIsFalse: 130.0,
              ),
              color: AppColor.sky2Color,
            ),
            const SizedBox(height: 2),
          ],
        ),
      ),
      fallback: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'No Rating Yet',
            style: kWidthCondtions(
              context,
              valueIsTrue: TextStyles.textStyle10R,
              valueIsFalse: TextStyles.textStyle13R,
            ),
          ),
          const SizedBox(height: 2),
          Container(
            height: .7,
            width: kWidthCondtions(
              context,
              valueIsTrue: 92.0,
              valueIsFalse: 105.0,
            ),
            color: AppColor.errorBorderAndRemoveAndIcons,
          ),
          const SizedBox(height: 2),
        ],
      ),
    );
  }
}
