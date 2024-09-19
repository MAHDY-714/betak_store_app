import 'package:equatable/equatable.dart';

class Rating extends Equatable {
  final int? stars;
  final int? count;

  const Rating({this.stars, this.count});

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        stars: json['stars'] as int?,
        count: json['count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'stars': stars,
        'count': count,
      };

  @override
  List<Object?> get props => [stars, count];
}
