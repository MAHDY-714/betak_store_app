part of 'product_rating_and_review_cubit.dart';

sealed class ProductRatingAndReviewState extends Equatable {
  const ProductRatingAndReviewState();

  @override
  List<Object> get props => [];
}

final class ProductRatingAndReviewInitial extends ProductRatingAndReviewState {}

final class ProductRatingAndReviewLoading extends ProductRatingAndReviewState {}

final class ProductRatingAndReviewSuccess extends ProductRatingAndReviewState {}

final class ProductRatingAndReviewFaliure extends ProductRatingAndReviewState {
  final String errorMessage;

  const ProductRatingAndReviewFaliure({required this.errorMessage});
}
