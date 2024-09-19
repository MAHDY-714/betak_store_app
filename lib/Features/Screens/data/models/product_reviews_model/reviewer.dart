import 'package:equatable/equatable.dart';

class Reviewer extends Equatable {
  final String? id;
  final String? name;

  const Reviewer({this.id, this.name});

  factory Reviewer.fromJson(Map<String, dynamic> json) => Reviewer(
        id: json['id'] as String?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  @override
  List<Object?> get props => [id, name];
}
