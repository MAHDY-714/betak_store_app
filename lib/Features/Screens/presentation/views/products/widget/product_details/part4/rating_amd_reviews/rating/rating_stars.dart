import 'dart:developer';

import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateingStars extends StatelessWidget {
  const RateingStars({
    super.key,
    required this.rateInitialValue,
    required this.starsCount,
    this.starSize = 15,
    this.width = 120,
  });

  final double rateInitialValue;
  final int starsCount;
  final double starSize;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
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