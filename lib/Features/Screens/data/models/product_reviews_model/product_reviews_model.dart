import 'package:equatable/equatable.dart';

import 'rating.dart';
import 'review.dart';

class ProductReviewsModel extends Equatable {
  final int? totalReview;
  final double? overallRating;
  final int? totalPositiveRecommendation;
  final int? totalNegativeRecommendation;
  final List<Rating>? ratings;
  final List<Review>? reviews;

  const ProductReviewsModel({
    this.totalReview,
    this.overallRating,
    this.totalPositiveRecommendation,
    this.totalNegativeRecommendation,
    this.ratings,
    this.reviews,
  });

  factory ProductReviewsModel.fromJson(Map<String, dynamic> json) {
    return ProductReviewsModel(
      totalReview: json['total_review'] as int?,
      overallRating: (json['overall_rating'] as num?)?.toDouble(),
      totalPositiveRecommendation:
          json['total_positive_recommendation'] as int?,
      totalNegativeRecommendation:
          json['total_negative_recommendation'] as int?,
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'total_review': totalReview,
        'overall_rating': overallRating,
        'total_positive_recommendation': totalPositiveRecommendation,
        'total_negative_recommendation': totalNegativeRecommendation,
        'ratings': ratings?.map((e) => e.toJson()).toList(),
        'reviews': reviews?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      totalReview,
      overallRating,
      totalPositiveRecommendation,
      totalNegativeRecommendation,
      ratings,
      reviews,
    ];
  }
}
