import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/font_family.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CountReviewsComments extends StatelessWidget {
  const CountReviewsComments({
    super.key,
    required this.productRatingAndReviewsModel,
  });

  final ProductRatingAndReviewsModel productRatingAndReviewsModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        Text(
          'Comments ${productRatingAndReviewsModel.reviews != null ? productRatingAndReviewsModel.reviews!.length : 0}',
          // 'Comments 1234567890',
          style: TextStyles.textStyle13Blue.copyWith(
            fontSize:
                kWidthCondtions(context, valueIsTrue: 14.0, valueIsFalse: 18.0),
            fontFamily: FontFamily.bitter500,
          ),
        ),
        const SizedBox(
          width: 4.0,
        ),
        Icon(
          FontAwesome.comment_dots,
          size: kWidthCondtions(context, valueIsTrue: 15.0, valueIsFalse: 17.0),
          color: AppColor.sky2Color.withOpacity(.5),
        ),
      ],
    );
  }
}
