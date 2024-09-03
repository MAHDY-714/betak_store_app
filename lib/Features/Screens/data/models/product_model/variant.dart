import 'package:equatable/equatable.dart';

class Variant extends Equatable {
  final String? title;
  final String? link;
  final String? thumbnail;

  const Variant({this.title, this.link, this.thumbnail});
  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        title: json['title'],
        link: json['link'],
        thumbnail: json['thumbnail'],
      );
  Map<String, dynamic> toJson() => {
        'title': title,
        'link': link,
        'thumbnail': thumbnail,
      };

  @override
  List<Object?> get props => [title, link, thumbnail];
}

List<dynamic> value = [
  1,
  'name',
  2,
  'value',
  5.5,
  'percentage',
  true,
];
