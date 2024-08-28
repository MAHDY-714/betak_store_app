import 'package:equatable/equatable.dart';

import 'value.dart';

class Specification extends Equatable {
  final String? key;
  final List<Value>? value;

  const Specification({this.key, this.value});

  factory Specification.fromJson(Map<String, dynamic> json) => Specification(
        key: json['key'] as String?,
        value: (json['value'] as List<dynamic>?)
            ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'value': value?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [key, value];
}
