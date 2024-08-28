import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  //{{baseUrl}}?{{engine}}&{{apiKey}}&country=us&q=Coffe Machine&hd_sort=best_match

  final String _baseUrl = 'https://serpapi.com/search.json';
  final String _apiKey =
      '8cd1616614220542d00e420172173d1ee359c1797eb06a2e6a7d94d5393e8c81';
  ApiService(this._dio);
//q=value&hd_sort=best_match&engine=home_depot
  Future<Map<String, dynamic>> getProducts({required String endPoint}) async {
    var response =
        await _dio.get('$_baseUrl?api_key=$_apiKey&country=us&$endPoint');
    return response.data;
  }

// for get product details=>
//    https://serpapi.com/search.json{{apiKey}}&engine=home_depot_product&product_id=321035976
//    engine=home_depot_product&product_id=321035976
//    endPoint=> engine=home_depot_product&product_id=321035976
}
