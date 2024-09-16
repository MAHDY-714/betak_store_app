import 'package:equatable/equatable.dart';
import 'brand.dart';
import 'fulfillment.dart';
import 'info_and_guide.dart';
import 'promotion.dart';
import 'specification.dart';

//جيميناي هل يمكنك أنت تساعدني في كتابة موديل يحتوي علي عنصر  List<String<String>> images مع العلم ان أن الموديل الأساسي
class ProductResults extends Equatable {
  final String? productId;
  final String? title;
  final String? description;
  final String? link;
  final String? upc;
  final String? modelNumber;
  final String? storeSkuNumber;
  final String? rating;
  final String? reviews;
  final double? price;
  final Promotion? promotion;
  final List<dynamic>? highlights;
  final Brand? brand;
  final List<dynamic>? images;
  final List<dynamic>? bullets;
  final List<InfoAndGuide>? infoAndGuides;
  final List<Specification>? specifications;
  final Fulfillment? fulfillment;

  const ProductResults({
    this.productId,
    this.title,
    this.description,
    this.link,
    this.upc,
    this.modelNumber,
    this.storeSkuNumber,
    this.rating,
    this.reviews,
    this.price,
    this.promotion,
    this.highlights,
    this.brand,
    this.images,
    this.bullets,
    this.infoAndGuides,
    this.specifications,
    this.fulfillment,
  });

  factory ProductResults.fromJson(Map<String, dynamic> json) {
    return ProductResults(
      productId: json['product_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      link: json['link'] as String?,
      upc: json['upc'] as String?,
      modelNumber: json['model_number'] as String?,
      storeSkuNumber: json['store_sku_number'] as String?,
      rating: json['rating'],
      reviews: json['reviews'],
      images: json['images'] as List<dynamic>?,
      price: json['price'],
      promotion: json['promotion'] == null
          ? null
          : Promotion.fromJson(json['promotion'] as Map<String, dynamic>),
      highlights: json['highlights'] as List<dynamic>?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      bullets: json['bullets'] as List<dynamic>?,
      infoAndGuides: (json['info_and_guides'] as List<dynamic>?)
          ?.map((e) => InfoAndGuide.fromJson(e as Map<String, dynamic>))
          .toList(),
      specifications: (json['specifications'] as List<dynamic>?)
          ?.map((e) => Specification.fromJson(e as Map<String, dynamic>))
          .toList(),
      fulfillment: json['fulfillment'] == null
          ? null
          : Fulfillment.fromJson(json['fulfillment'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'product_id': productId,
        'title': title,
        'description': description,
        'link': link,
        'upc': upc,
        'model_number': modelNumber,
        'store_sku_number': storeSkuNumber,
        'rating': rating,
        'reviews': reviews,
        'price': price,
        'images': images,
        'promotion': promotion?.toJson(),
        'highlights': highlights,
        'brand': brand?.toJson(),
        'bullets': bullets,
        'info_and_guides': infoAndGuides?.map((e) => e.toJson()).toList(),
        'specifications': specifications?.map((e) => e.toJson()).toList(),
        'fulfillment': fulfillment?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      productId,
      title,
      description,
      link,
      upc,
      modelNumber,
      storeSkuNumber,
      rating,
      reviews,
      price,
      promotion,
      highlights,
      brand,
      images,
      bullets,
      infoAndGuides,
      specifications,
      fulfillment,
    ];
  }
}
