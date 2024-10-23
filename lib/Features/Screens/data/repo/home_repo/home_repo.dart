import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_rating_and_reviews_model/product_rating_and_reviews_model.dart';
import 'package:betak_store_app/core/services/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //q=value&hd_sort=best_match&engine=home_depot
  Future<Either<Failures, List<ProductModel>>> getProducts({
    required String qValue,
    required String sortValue,
  });

  // engine=home_depot_product&product_id=321035976
  Future<Either<Failures, ProductResults>> getProductDetails({
    required String productId,
  });

  // q=furnishings&product_id=326182591&engine=home_depot_product_reviews
  Future<Either<Failures, ProductRatingAndReviewsModel>> getProductReview({
    required String productId,
  });
  //q=value&hd_sort=best_match&engine=home_depot
  //   Future<Either<Failures, String>> getCtegoriesInCategoriesScreen({
  //   required String qValue,
  // });
}
