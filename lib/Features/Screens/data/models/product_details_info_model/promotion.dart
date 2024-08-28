import 'package:equatable/equatable.dart';

class Promotion extends Equatable {
  final int? save;
  final int? percentage;
  final int? original;

  const Promotion({this.save, this.percentage, this.original});

  factory Promotion.fromJson(Map<String, dynamic> json) => Promotion(
        save: json['save'] as int?,
        percentage: json['percentage'] as int?,
        original: json['original'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'save': save,
        'percentage': percentage,
        'original': original,
      };

  @override
  List<Object?> get props => [save, percentage, original];
}
