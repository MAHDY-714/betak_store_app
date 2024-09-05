import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
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
  Future<Either<Failures, List<ProductModel>>> getCtegoriesInHomeProduct(
      {required String qValue, required String sortValue}) async {
    try {
      var data = await apiService.getProducts(
          endPoint: 'q=$qValue&hd_sort=$sortValue&engine=home_depot');
      List<ProductModel> listProductsInfoModel = [];
      for (var product in data['products']) {
        listProductsInfoModel.add(ProductModel.fromJson(product));
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
      {required String productId}) async {
    try {
      var data = await apiService.getProducts(
        endPoint: 'engine=home_depot_product&product_id=$productId',
      );
      // log(data['product_results'].toString());
      ProductResults productDetailsModel = ProductResults.fromJson(
          data['product_results'] as Map<String, dynamic>);
      return right(productDetailsModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioExceptions(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
