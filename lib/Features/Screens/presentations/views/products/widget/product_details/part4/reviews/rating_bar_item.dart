import 'dart:developer';

import 'package:betak_store_app/core/styles/font_family.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RowRatingBarItemBuilder extends StatelessWidget {
  const RowRatingBarItemBuilder({
    super.key,
    this.rateValue = 5,
    this.rateCounter = 9999999999,
    required this.allRateCounter,
  });
  final double rateValue;
  final int rateCounter;
  final int allRateCounter;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Text(
            textAlign: TextAlign.end,
            '${kRatingPercentage(allRateCounter: allRateCounter, rateCounter: rateCounter)}%',
            // '100%',
            style: TextStyles.textRecommendationsInProductDetailsStyle.copyWith(
              height: 3.55,
              fontFamily: FontFamily.platypi900,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Transform.flip(
          flipX: false,
          child: RatingBar.builder(
            ignoreGestures: true,
            maxRating: 5,
            initialRating: rateValue,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 20,
            unratedColor: Colors.transparent,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, index) => Image.asset(
              AssetsImages.starIcon,
            ),
            onRatingUpdate: (rating) {
              log(rating.toString());
            },
          ),
        ),
      ],
    );
  }
}
