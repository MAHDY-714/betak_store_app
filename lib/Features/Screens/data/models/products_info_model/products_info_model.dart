import 'package:equatable/equatable.dart';

import 'product.dart';

class ProductsInfoModel extends Equatable {
  final List<Product>? products;

  const ProductsInfoModel({this.products});

  factory ProductsInfoModel.fromJson(Map<String, dynamic> json) {
    return ProductsInfoModel(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'products': products?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [products];
}
