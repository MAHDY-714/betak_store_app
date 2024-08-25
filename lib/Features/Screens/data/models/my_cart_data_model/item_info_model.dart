import 'dart:developer';

class ProductInfoInMyCartModel {
  final String image;
  final String name;
  final double price;
  final int quantity;

  ProductInfoInMyCartModel({
    required this.image,
    required this.name,
    required this.price,
    this.quantity = 1,
  });

  double totalPrice() {
    log('payment');
    return price * quantity;
  }
}

//total = price * quantity
