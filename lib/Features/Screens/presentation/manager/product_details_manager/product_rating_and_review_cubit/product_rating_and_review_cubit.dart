import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_rating_and_review_state.dart';

class ProductRatingAndReviewCubit extends Cubit<ProductRatingAndReviewState> {
  ProductRatingAndReviewCubit(this.homeRepo)
      : super(ProductRatingAndReviewInitial());
  final HomeRepo homeRepo;

  ProductRatingAndReviewsModel? productRatingAndReviewsModel;
  int reviewsComment = 10;
  Future<void> getProductReviewDetails({required String productId}) async {
    emit(ProductRatingAndReviewLoading());
    var response = await homeRepo.getProductReview(productId: productId);
    response.fold(
      (faliure) {
        log(faliure.errorMessage);
        emit(ProductRatingAndReviewFaliure(errorMessage: faliure.errorMessage));
      },
      (productReview) {
        productRatingAndReviewsModel =
            ProductRatingAndReviewsModel.fromJson(productReview.toJson());
        emit(ProductRatingAndReviewSuccess());
      },
    );
  }

  int moreReviewsComments({
    ProductRatingAndReviewsModel? productRatingAndReviewsModel,
  }) {
    if (productRatingAndReviewsModel!.reviews != null) {
      if (productRatingAndReviewsModel.reviews!.length <= 10) {
        reviewsComment = productRatingAndReviewsModel.reviews!.length;
        emit(ProductRatingAndReviewGetMoreReviewsComments());
      } else if (productRatingAndReviewsModel.reviews!.length >
          reviewsComment) {
        reviewsComment += 10;
        reviewsComment =
            productRatingAndReviewsModel.reviews!.length < reviewsComment
                ? productRatingAndReviewsModel.reviews!.length
                : reviewsComment * 1;
        emit(ProductRatingAndReviewMoreReviewsComments());
      }
    }
    emit(ProductRatingAndReviewGetMoreReviewsComments());
    return reviewsComment;
  }

  int lessReviewsComments({
    ProductRatingAndReviewsModel? productRatingAndReviewsModel,
  }) {
    if (productRatingAndReviewsModel!.reviews != null) {
      if (productRatingAndReviewsModel.reviews!.length <= 10) {
        reviewsComment = productRatingAndReviewsModel.reviews!.length;
        emit(ProductRatingAndReviewGetLessReviewsComments());
      } else if (productRatingAndReviewsModel.reviews!.length > 10) {
        reviewsComment = 10;
        emit(ProductRatingAndReviewLessReviewsComments());
      }
    }
    emit(ProductRatingAndReviewGetLessReviewsComments());
    return reviewsComment;
  }
}
