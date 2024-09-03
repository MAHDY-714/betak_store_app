import 'package:betak_store_app/Features/Screens/data/models/product_model/variant.dart';
import 'package:equatable/equatable.dart';

import 'delivery.dart';
import 'pickup.dart';

class ProductModel extends Equatable {
  final int? position;
  final String? productId;
  final String? title;
  final List<dynamic>? thumbnails;
  final String? link;
  final String? serpapiLink;
  final String? modelNumber;
  final String? brand;
  final String? collection;
  final double? rating;
  final double? price;
  final double? priceWas;
  final double? priceSaving;
  final double? percentageOff;
  final String? priceBadge;
  final List<Variant>? variants;
  final Delivery? delivery;
  final Pickup? pickup;

  const ProductModel({
    this.position,
    this.productId,
    this.title,
    this.thumbnails,
    this.link,
    this.serpapiLink,
    this.modelNumber,
    this.brand,
    this.collection,
    this.rating,
    this.price,
    this.priceWas,
    this.priceSaving,
    this.percentageOff,
    this.priceBadge,
    this.variants,
    this.delivery,
    this.pickup,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        position: json['position'] as int?,
        productId: json['product_id'],
        title: json['title'] as String?,
        thumbnails: json['thumbnails'],
        link: json['link'],
        serpapiLink: json['serpapi_link'],
        modelNumber: json['model_number'],
        brand: json['brand'],
        collection: json['collection'],
        rating: json['rating'],
        price: json['price'],
        priceWas: json['price_was'],
        priceSaving: json['price_saving'],
        percentageOff: json['percentage_off'],
        priceBadge: json['price_badge'],
        variants: (json['variants'] as List<dynamic>?)
            ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
            .toList(),
        delivery: json['delivery'] == null
            ? null
            : Delivery.fromJson(json['delivery'] as Map<String, dynamic>),
        pickup: json['pickup'] == null
            ? null
            : Pickup.fromJson(json['pickup'] as Map<String, dynamic>),
      );
  Map<String, dynamic> toJson() => {
        'position': position,
        'product_id': productId,
        'title': title,
        'thumbnails': thumbnails,
        'link': link,
        'serpapi_link': serpapiLink,
        'model_number': modelNumber,
        'brand': brand,
        'collection': collection,
        'rating': rating,
        'price': price,
        'price_was': priceWas,
        'price_saving': priceSaving,
        'percentage_off': percentageOff,
        'price_badge': priceBadge,
        'variants': variants?.map((e) => e.toJson()).toList(),
        'delivery': delivery?.toJson(),
        'pickup': pickup?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      position,
      productId,
      title,
      thumbnails,
      link,
      serpapiLink,
      modelNumber,
      brand,
      collection,
      rating,
      price,
      priceWas,
      priceSaving,
      percentageOff,
      priceBadge,
      variants,
      delivery,
      pickup,
    ];
  }
}
