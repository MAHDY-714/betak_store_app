import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/models/products_info_model/product.dart';
import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo.dart';
import 'package:betak_store_app/core/services/api_services.dart';
import 'package:betak_store_app/core/services/errors/failures.dart';
import 'package:betak_store_app/core/services/errors/server_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);
  @override
  Future<Either<Failures, List<ProductsInfoModel>>> getCtegoriesInHomeProduct(
      {required String qValue, required String sortValue}) async {
    try {
      var data = await apiService.getProducts(
          endPoint: 'q=$qValue&hd_sort=$sortValue&engine=home_depot');
      List<ProductsInfoModel> listProductsInfoModel = [];
      for (var product in data['products']) {
        listProductsInfoModel.add(ProductsInfoModel.fromJson(product));
      }
      return right(listProductsInfoModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioExceptions(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, ProductResults>> getProductDetails(
      {required int productId}) async {
    try {
      var data = await apiService.getProducts(
        endPoint: 'engine=home_depot_product&product_id=$productId',
      );
      ProductResults productResults = ProductResults.fromJson(data);
      return right(productResults);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioExceptions(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
