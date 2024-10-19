import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part4/rating_and_reviews/reviews_details/row_review_date_and_rate.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part5/description_text.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class ReviewDetailsItemBuilder extends StatelessWidget {
  const ReviewDetailsItemBuilder(
      {super.key,
      required this.productRatingAndReviewsModel,
      required this.index});
  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    // String imageLink =
    //     "https://photos-us.bazaarvoice.com/photo/2/cGhvdG86aG9tZWRlcG90/06f5a003-0e34-51d8-9851-7c3aa4052250";
    String inputDateString =
        productRatingAndReviewsModel!.reviews![index].time.toString();

    String reviewDateTime =
        DateFormat('MMMM dd,yyyy').format(DateTime.parse(inputDateString));

    return Padding(
      padding: const EdgeInsets.only(
          bottom: kPaddingInAllInsideProductDetailsVertical),
      child: Container(
        width: kWidth(context),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        decoration: Decorations.reviewDetailsItemBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${productRatingAndReviewsModel!.reviews![index].reviewer!.name}',
              style: TextStyles.textStyle10W60.copyWith(
                  fontSize: kWidthCondtions(context,
                      valueIsTrue: 13.0, valueIsFalse: 17.0)),
            ),
            RowReviewDateAndRate(
              reviewDateTime: reviewDateTime,
              productRatingAndReviewsModel: productRatingAndReviewsModel,
              index: index,
            ),
            if (productRatingAndReviewsModel!.reviews![index].text != null)
              DescriptionText(
                text: productRatingAndReviewsModel!.reviews![index].text
                    .toString(),
                style: kWidthCondtions(
                  context,
                  valueIsTrue: TextStyles.textStyle11,
                  valueIsFalse: TextStyles.textStyle15,
                ),
                padingHorizontal: 4.0,
              ),
            const SizedBox(height: 4.0),
          ],
        ),
      ),
    );
  }
}
