import 'package:equatable/equatable.dart';

import 'option.dart';

class Fulfillment extends Equatable {
  final List<Option>? options;

  const Fulfillment({this.options});

  factory Fulfillment.fromJson(Map<String, dynamic> json) => Fulfillment(
        options: (json['options'] as List<dynamic>?)
            ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'options': options?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [options];
}
