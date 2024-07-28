
import 'rating_bar_item.dart';
import '../../../../../../../../../core/styles/font_family.dart';
import '../../../../../../../../../core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class RateListView extends StatelessWidget {
  const RateListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        alignment: const AlignmentDirectional(.7, .61),
        children: [
          ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              late double ratingValue;
              late int ratingCountr;
              switch (index) {
                case 0:
                  ratingValue = 5;
                  ratingCountr = 1502;
                case 1:
                  ratingValue = 4;
                  ratingCountr = 580;

                case 2:
                  ratingValue = 3;
                  ratingCountr = 240;

                case 3:
                  ratingValue = 2;
                  ratingCountr = 70;

                case 4:
                  ratingValue = 1;
                  ratingCountr = 12;
              }
              return RowRatingBarItemBuilder(
                rateValue: ratingValue,
                rateCounter: ratingCountr,
                allRateCounter: 2404,
              );
            },
          ),
          SizedBox(
            height: 90,
            width: 250,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.end,
              textBaseline: TextBaseline.ideographic,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '4.8',
                  style: TextStyles.textRateValueInProductDetailsStyle.copyWith(
                    fontSize: 50,
                    height: 1.5,
                    fontFamily: FontFamily.bitter900,
                  ),
                ),
                const SizedBox(width: 4.0),
                Text(
                    textAlign: TextAlign.end,
                    '/',
                    style: TextStyles.textRecommendationsInProductDetailsStyle
                        .copyWith(fontSize: 20)),
                const SizedBox(width: 4.0),
                Text(
                  '5',
                  style: TextStyles.textRateValueInProductDetailsStyle.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
