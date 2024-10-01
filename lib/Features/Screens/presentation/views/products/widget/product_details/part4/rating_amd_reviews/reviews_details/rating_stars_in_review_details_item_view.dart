import 'dart:developer';

import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStarsInReviewDetailsItemView extends StatelessWidget {
  const RatingStarsInReviewDetailsItemView({
    super.key,
    required this.rateInitialValue,
    required this.starsCount,
    this.starSize = 15,

  });

  final double rateInitialValue;
  final int starsCount;
  final double starSize;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidthCondtions(context, valueIsTrue: 100.0, valueIsFalse: 120.0),
      child: Transform.flip(
        flipX: false,
        child: RatingBar.builder(
          ignoreGestures: true,
          maxRating: 5,
          initialRating: rateInitialValue,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: starsCount,
          itemSize: starSize,
          unratedColor: AppColor.greyColor.withOpacity(.5),
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, index) => Image.asset(
            AssetsImages.starIcon,
          ),
          onRatingUpdate: (rating) {
            log(rating.toString());
          },
        ),
      ),
    );
  }
}
