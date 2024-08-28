import 'package:equatable/equatable.dart';

class InfoAndGuide extends Equatable {
  final String? title;
  final String? link;

  const InfoAndGuide({this.title, this.link});

  factory InfoAndGuide.fromJson(Map<String, dynamic> json) => InfoAndGuide(
        title: json['title'] as String?,
        link: json['link'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'link': link,
      };

  @override
  List<Object?> get props => [title, link];
}
