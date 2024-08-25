import 'package:equatable/equatable.dart';

import 'delivery.dart';
import 'pickup.dart';
import 'thumbnail.dart';
import 'variant.dart';

class Product extends Equatable {
  final int? position;
  final String? productId;
  final String? title;
  final List<Thumbnail>? thumbnails;
  final String? link;
  final String? serpapiLink;
  final String? modelNumber;
  final String? brand;
  final String? collection;
  final double? rating;
  final double? price;
  final Delivery? delivery;
  final Pickup? pickup;
  final int? favorite;
  final int? reviews;
  final String? unit;
  final List<String>? badges;
  final List<Variant>? variants;
  final double? priceWas;
  final int? priceSaving;
  final int? percentageOff;
  final String? priceBadge;

  const Product({
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
    this.delivery,
    this.pickup,
    this.favorite,
    this.reviews,
    this.unit,
    this.badges,
    this.variants,
    this.priceWas,
    this.priceSaving,
    this.percentageOff,
    this.priceBadge,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        position: json['position'] as int?,
        productId: json['product_id'] as String?,
        title: json['title'] as String?,
        thumbnails: (json['thumbnails'] as List<dynamic>?)
            ?.map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
            .toList(),
        link: json['link'] as String?,
        serpapiLink: json['serpapi_link'] as String?,
        modelNumber: json['model_number'] as String?,
        brand: json['brand'] as String?,
        collection: json['collection'] as String?,
        rating: (json['rating'] as num?)?.toDouble(),
        price: (json['price'] as num?)?.toDouble(),
        delivery: json['delivery'] == null
            ? null
            : Delivery.fromJson(json['delivery'] as Map<String, dynamic>),
        pickup: json['pickup'] == null
            ? null
            : Pickup.fromJson(json['pickup'] as Map<String, dynamic>),
        favorite: json['favorite'] as int?,
        reviews: json['reviews'] as int?,
        unit: json['unit'] as String?,
        badges: json['badges'] as List<String>?,
        variants: (json['variants'] as List<dynamic>?)
            ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
            .toList(),
        priceWas: (json['price_was'] as num?)?.toDouble(),
        priceSaving: json['price_saving'] as int?,
        percentageOff: json['percentage_off'] as int?,
        priceBadge: json['price_badge'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'position': position,
        'product_id': productId,
        'title': title,
        'thumbnails': thumbnails?.map((e) => e.toJson()).toList(),
        'link': link,
        'serpapi_link': serpapiLink,
        'model_number': modelNumber,
        'brand': brand,
        'collection': collection,
        'rating': rating,
        'price': price,
        'delivery': delivery?.toJson(),
        'pickup': pickup?.toJson(),
        'favorite': favorite,
        'reviews': reviews,
        'unit': unit,
        'badges': badges,
        'variants': variants?.map((e) => e.toJson()).toList(),
        'price_was': priceWas,
        'price_saving': priceSaving,
        'percentage_off': percentageOff,
        'price_badge': priceBadge,
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
      delivery,
      pickup,
      favorite,
      reviews,
      unit,
      badges,
      variants,
      priceWas,
      priceSaving,
      percentageOff,
      priceBadge,
    ];
  }
}
