import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';

class SpecificationsInfoModel {
  final ProductResults productResults;
  final int indexItem;
  final int listLength;

  SpecificationsInfoModel({
    required this.productResults,
    required this.indexItem,
    required this.listLength,
  });
}
