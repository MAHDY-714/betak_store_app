import 'package:equatable/equatable.dart';

class Promotion extends Equatable {
  final double? save;
  final double? percentage;
  final double? original;

  const Promotion({this.save, this.percentage, this.original});

  factory Promotion.fromJson(Map<String, dynamic> json) => Promotion(
        save: json['save'],
        percentage: json['percentage'],
        original: json['original'],
      );

  Map<String, dynamic> toJson() => {
        'save': save,
        'percentage': percentage,
        'original': original,
      };

  @override
  List<Object?> get props => [save, percentage, original];
}
