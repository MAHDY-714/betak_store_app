import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/rating_details/rating_stars_in_row_rating_widget.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part4/rating_amd_reviews/reviews_details/rating_stars_in_review_details_item_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part5/description_text.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/cached_network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class ReviewDetailsItemBuilder extends StatelessWidget {
  const ReviewDetailsItemBuilder(
      {super.key, required this.productRatingAndReviewsModel});
  final ProductRatingAndReviewsModel? productRatingAndReviewsModel;

  @override
  Widget build(BuildContext context) {
    String imageLink =
        "https://photos-us.bazaarvoice.com/photo/2/cGhvdG86aG9tZWRlcG90/06f5a003-0e34-51d8-9851-7c3aa4052250";
    String inputDateString =
        productRatingAndReviewsModel!.reviews![0].time.toString();

    String reviewDateTime =
        DateFormat('MMMM dd,yyyy').format(DateTime.parse(inputDateString));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        width: kWidth(context),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: AppColor.sky2Color.withOpacity(.1),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Art the handyman',
              style: TextStyles.textStyle10W60.copyWith(fontSize: 13.0),
            ),
            Row(
              children: [
                Text(
                  reviewDateTime,
                  style: TextStyles.textStyle9,
                ),
                const Spacer(),
                Text(
                  '(${productRatingAndReviewsModel!.reviews![0].rating!})',
                  style: TextStyles.textStyle10W60.copyWith(fontSize: 10),
                ),
                const SizedBox(
                  width: 4,
                ),
                RateingStarsInRowRatingWidget(
                  rateInitialValue: productRatingAndReviewsModel!
                      .reviews![0].rating!
                      .toDouble(),
                  starsCount: 5,
                  // starSize: 12,
                ),
              ],
            ),
            DescriptionText(
              text: productRatingAndReviewsModel!.reviews![0].text.toString() +
                  productRatingAndReviewsModel!.reviews![0].text.toString() +
                  productRatingAndReviewsModel!.reviews![0].text.toString() +
                  productRatingAndReviewsModel!.reviews![0].text.toString() +
                  productRatingAndReviewsModel!.reviews![0].text.toString() +
                  productRatingAndReviewsModel!.reviews![0].text.toString(),
              style: TextStyles.textStyle11,
              padingHorizontal: 4.0,
            ),
            const SizedBox(height: 4.0),
            Center(
              child: Container(
                height: 160,
                width: 130,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: AppColor.backgroundImageCategore,
                      width: .5,
                    )),
                child: ClipRRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  borderRadius: BorderRadius.circular(8.0),
                  child: CachedNetworkImageWidget(
                    imageProduct: imageLink,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
