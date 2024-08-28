import 'package:equatable/equatable.dart';

import 'product_results.dart';

class ProductDetailsInfoModel extends Equatable {
  final ProductResults? productResults;

  const ProductDetailsInfoModel({this.productResults});

  factory ProductDetailsInfoModel.fromJson(Map<String, dynamic> json) {
    return ProductDetailsInfoModel(
      productResults: json['product_results'] == null
          ? null
          : ProductResults.fromJson(
              json['product_results'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'product_results': productResults?.toJson(),
      };

  @override
  List<Object?> get props => [productResults];
}
