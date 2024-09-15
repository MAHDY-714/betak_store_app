import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:flutter/material.dart';

@immutable
sealed class ProductDetailsState {}

final class InitialProductDetailsState extends ProductDetailsState {}

final class GetProductDetailsLoadingState extends ProductDetailsState {}

final class GetProductDetailsSuccessState extends ProductDetailsState {
  final ProductResults productResults;

  GetProductDetailsSuccessState({required this.productResults});
}

final class GetProductDetailsFailureState extends ProductDetailsState {
  final String errorMessage;

  GetProductDetailsFailureState(this.errorMessage);
}

final class GetProductDetailsChangeImagePreviewState
    extends ProductDetailsState {}

final class GetProductDetailsChoseProductColorState
    extends ProductDetailsState {}
