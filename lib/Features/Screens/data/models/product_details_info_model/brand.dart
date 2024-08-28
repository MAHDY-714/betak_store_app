import 'package:equatable/equatable.dart';

class Brand extends Equatable {
  final String? name;
  final String? link;

  const Brand({this.name, this.link});

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        name: json['name'] as String?,
        link: json['link'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'link': link,
      };

  @override
  List<Object?> get props => [name, link];
}
