import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
      child: ReadMoreText(
        text,
        trimMode: TrimMode.Line,
        trimLines: 2,
        trimCollapsedText: 'more',
        trimExpandedText: 'less',
        moreStyle: TextStyles.orAndReviewStyle,
        lessStyle: TextStyles.orAndReviewStyle,
        style: TextStyles.textRecommendationsInProductDetailsStyle,
      ),
    );
  }
}
