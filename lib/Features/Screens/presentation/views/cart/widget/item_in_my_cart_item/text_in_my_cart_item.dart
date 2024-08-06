import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class TextInMyCartItem extends StatelessWidget {
  const TextInMyCartItem({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      width: kWidth(context) * .5,
      child: Text(
        title,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.textRecommendationsInProductDetailsStyle,
      ),
    );
  }
}
