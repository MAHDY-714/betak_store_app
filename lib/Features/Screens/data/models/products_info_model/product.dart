import 'package:equatable/equatable.dart';

import 'delivery.dart';
import 'pickup.dart';
import 'thumbnail.dart';
import 'variant.dart';

class ProductsInfoModel extends Equatable {
  final int? position;
  final String? productId;
  final String? title;
  final List<Thumbnail>? thumbnails;
  final String? link;
  final String? serpapiLink;
  final String? modelNumber;
  final String? brand;
  final String? collection;
  final List<Variant>? variants;
  final int? favorite;
  final double? rating;
  final int? reviews;
  final double? price;
  final List<String>? badges;
  final Delivery? delivery;
  final Pickup? pickup;
  final double? priceWas;
  final double? priceSaving;
  final int? percentageOff;
  final String? priceBadge;
  final String? unit;

  const ProductsInfoModel({
    this.position,
    this.productId,
    this.title,
    this.thumbnails,
    this.link,
    this.serpapiLink,
    this.modelNumber,
    this.brand,
    this.collection,
    this.variants,
    this.favorite,
    this.rating,
    this.reviews,
    this.price,
    this.badges,
    this.delivery,
    this.pickup,
    this.priceWas,
    this.priceSaving,
    this.percentageOff,
    this.priceBadge,
    this.unit,
  });

  factory ProductsInfoModel.fromJson(Map<String, dynamic> json) =>
      ProductsInfoModel(
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
        variants: (json['variants'] as List<dynamic>?)
            ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
            .toList(),
        favorite: json['favorite'] as int?,
        rating: (json['rating'] as num?)?.toDouble(),
        reviews: json['reviews'] as int?,
        price: (json['price'] as num?)?.toDouble(),
        badges: json['badges'] as List<String>?,
        delivery: json['delivery'] == null
            ? null
            : Delivery.fromJson(json['delivery'] as Map<String, dynamic>),
        pickup: json['pickup'] == null
            ? null
            : Pickup.fromJson(json['pickup'] as Map<String, dynamic>),
        priceWas: (json['price_was'] as num?)?.toDouble(),
        priceSaving: (json['price_saving'] as num?)?.toDouble(),
        percentageOff: json['percentage_off'] as int?,
        priceBadge: json['price_badge'] as String?,
        unit: json['unit'] as String?,
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
        'variants': variants?.map((e) => e.toJson()).toList(),
        'favorite': favorite,
        'rating': rating,
        'reviews': reviews,
        'price': price,
        'badges': badges,
        'delivery': delivery?.toJson(),
        'pickup': pickup?.toJson(),
        'price_was': priceWas,
        'price_saving': priceSaving,
        'percentage_off': percentageOff,
        'price_badge': priceBadge,
        'unit': unit,
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
      variants,
      favorite,
      rating,
      reviews,
      price,
      badges,
      delivery,
      pickup,
      priceWas,
      priceSaving,
      percentageOff,
      priceBadge,
      unit,
    ];
  }
}
