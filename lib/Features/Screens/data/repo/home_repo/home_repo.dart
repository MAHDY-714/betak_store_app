import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/models/products_info_model/product.dart';
import 'package:betak_store_app/core/services/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //q=value&hd_sort=best_match&engine=home_depot
  Future<Either<Failures, List<ProductsInfoModel>>> getCtegoriesInHomeProduct({
    required String qValue,
    required String sortValue,
  });

  // engine=home_depot_product&product_id=321035976
  Future<Either<Failures, ProductResults>> getProductDetails({
    required int productId,
  });
}
