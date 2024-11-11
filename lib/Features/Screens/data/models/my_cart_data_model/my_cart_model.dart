import 'dart:developer';
import 'package:equatable/equatable.dart';

class MyCartModel extends Equatable {
  final String? productId;
  final String? image;
  final String? color;
  final String? title;
  final double? price;
  final double? save;
  final double? percentage;
  final double? original;
  final String? modelNumber;
  final String? brand;
  final int quantity;
  const MyCartModel({
    required this.productId,
    required this.image,
    required this.color,
    required this.title,
    required this.price,
    required this.save,
    required this.percentage,
    required this.original,
    required this.modelNumber,
    required this.brand,
    this.quantity = 1,
  });

  double totalPrice() {
    log('payment');
    return price ?? 0.0 * quantity;
  }

  factory MyCartModel.formJson(json) {
    return MyCartModel(
      productId: json['productId'],
      image: json['image'],
      color: json['color'],
      title: json['title'],
      price: json['price'],
      save: json['save'],
      percentage: json['percentage'],
      original: json['original'],
      modelNumber: json['modelNumber'],
      brand: json['brand'],
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'image': image,
      'color': color,
      'title': title,
      'price': price,
      'save': save,
      'percentage': percentage,
      'original': original,
      'modelNumber': modelNumber,
      'brand': brand,
      'quantity': quantity,
    };
  }

  @override
  List<Object?> get props => [
        productId,
        image,
        color,
        title,
        price,
        save,
        percentage,
        original,
        modelNumber,
        brand,
        quantity
      ];
}
