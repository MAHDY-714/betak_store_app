import 'package:equatable/equatable.dart';

class Value extends Equatable {
  final String? name;
  final String? value;
  const Value({this.name, this.value});

  factory Value.fromJson(Map<String, dynamic> json) {
    return Value(
      name: json['name'],
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'value': value,
      };

  @override
  List<Object?> get props => [name, value];
}
