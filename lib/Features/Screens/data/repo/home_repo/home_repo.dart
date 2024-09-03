import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_details_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/core/services/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //q=value&hd_sort=best_match&engine=home_depot
  Future<Either<Failures, List<ProductModel>>> getCtegoriesInHomeProduct({
    required String qValue,
    required String sortValue,
  });

  // engine=home_depot_product&product_id=321035976
  Future<Either<Failures, ProductDetailsModel>> getProductDetails({
    required int productId,
  });
}
