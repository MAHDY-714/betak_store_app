import 'package:betak_store_app/core/services/api_keys.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  //{{baseUrl}}?{{engine}}&{{apiKey}}&country=us&q=Coffe Machine&hd_sort=best_match

  final String _baseUrl = 'https://serpapi.com/search.json';
  ApiService(this._dio);
//q=value&hd_sort=best_match&engine=home_depot
  Future<Map<String, dynamic>> getProducts({required String endPoint}) async {
    var response =
        await _dio.get('$_baseUrl?api_key=${ApiKeys.serpApiKey}&country=us&$endPoint');
    return response.data;
  }

// for get product details=>
//    https://serpapi.com/search.json{{apiKey}}&engine=home_depot_product&product_id=321035976
//    engine=home_depot_product&product_id=321035976
//    endPoint=> engine=home_depot_product&product_id=321035976
}
