import 'package:equatable/equatable.dart';

class Image extends Equatable {
  final String? link;
  final String? thumbnail;

  const Image({this.link, this.thumbnail});

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        link: json['link'] as String?,
        thumbnail: json['thumbnail'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'link': link,
        'thumbnail': thumbnail,
      };

  @override
  List<Object?> get props => [link, thumbnail];
}
