import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  //{{baseUrl}}?{{engine}}&{{apiKey}}&country=us&q=Coffe Machine&hd_sort=best_match
  final String _baseUrl = 'https://serpapi.com/search.json';
  final String _apiKey =
      '8cd1616614220542d00e420172173d1ee359c1797eb06a2e6a7d94d5393e8c81';
  ApiService(this._dio);
//engine=home_depot&country=us&hd_sort=$sort&q=$category
  Future<Map<String, dynamic>> getCategory({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl?api_key=$_apiKey&$endPoint');
    return response.data;
  }
}
