import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';

class MyCartModel {
  // final String productId;
  // final String image;
  // final String color;
  // final String name;
  // final double price;
  // final double save;
  // final double percentage;
  // final double original;
  // final String modelNumber;
  // final String sku;
  final ProductModel? productModel;
  final ProductResults? productResults;
  final int quantity;
  final String color;
  MyCartModel({
    this.quantity = 1,
    required this.productModel,
    required this.productResults,
    required this.color, 
   
  });

  double totalPrice() {
    log('payment');
    return productResults?.price != null
        ? productResults!.price! * quantity
        : 0.0 * quantity;
  }
}

//total = price * quantity
