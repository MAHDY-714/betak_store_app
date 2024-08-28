import 'package:equatable/equatable.dart';

class Images extends Equatable {
  final List<String>? images;

  const Images(this.images);

  factory Images.fromJson(Map<String, dynamic> json) {
    final images = json['images'] as List<dynamic>;
    return Images(images.cast<String>());
  }

  Map<String, dynamic> toJson() {
    return {
      'images': images,
    };
  }

  @override
  List<Object?> get props => [images];
}
