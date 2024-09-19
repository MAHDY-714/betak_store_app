import 'package:equatable/equatable.dart';

import 'image.dart';
import 'reviewer.dart';

class Review extends Equatable {
  final String? id;
  final String? text;
  final int? rating;
  final List<String>? badges;
  final Reviewer? reviewer;
  final int? totalNegativeFeedback;
  final int? totalPositiveFeedback;
  final DateTime? time;
  final List<Image>? images;

  const Review({
    this.id,
    this.text,
    this.rating,
    this.badges,
    this.reviewer,
    this.totalNegativeFeedback,
    this.totalPositiveFeedback,
    this.time,
    this.images,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json['id'] as String?,
        text: json['text'] as String?,
        rating: json['rating'] as int?,
        badges: json['badges'] as List<String>?,
        reviewer: json['reviewer'] == null
            ? null
            : Reviewer.fromJson(json['reviewer'] as Map<String, dynamic>),
        totalNegativeFeedback: json['total_negative_feedback'] as int?,
        totalPositiveFeedback: json['total_positive_feedback'] as int?,
        time: json['time'] == null
            ? null
            : DateTime.parse(json['time'] as String),
        images: (json['images'] as List<dynamic>?)
            ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
        'rating': rating,
        'badges': badges,
        'reviewer': reviewer?.toJson(),
        'total_negative_feedback': totalNegativeFeedback,
        'total_positive_feedback': totalPositiveFeedback,
        'time': time?.toIso8601String(),
        'images': images?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      text,
      rating,
      badges,
      reviewer,
      totalNegativeFeedback,
      totalPositiveFeedback,
      time,
      images,
    ];
  }
}
