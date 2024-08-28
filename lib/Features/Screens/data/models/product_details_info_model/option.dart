import 'package:equatable/equatable.dart';

class Option extends Equatable {
  final String? type;
  final String? title;
  final String? deliveryDate;

  const Option({this.type, this.title, this.deliveryDate});

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        type: json['type'] as String?,
        title: json['title'] as String?,
        deliveryDate: json['delivery_date'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'title': title,
        'delivery_date': deliveryDate,
      };

  @override
  List<Object?> get props => [type, title, deliveryDate];
}
