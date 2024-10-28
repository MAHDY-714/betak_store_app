import 'dart:developer';

class MyCartModel {
  final String productID;
  final String image;
  final String name;
  final double price;
  final double save;
  final double percentage;
  final double original;
  final int quantity;
  final int modelNumber;
  final int sku;

  MyCartModel(
    this.productID,
    this.save,
    this.percentage,
    this.original,
    this.modelNumber,
    this.sku, {
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
