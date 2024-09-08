import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:flutter/material.dart';

@immutable
sealed class HomeState {}

final class HomeInitialState extends HomeState {}

final class GetProductsLoadingState extends HomeState {}

final class GetProductsSuccessState extends HomeState {
  final List<ProductModel> productModel;

  GetProductsSuccessState({required this.productModel});
}

final class GetProductsFailureState extends HomeState {
  final String errorMessage;

  GetProductsFailureState(this.errorMessage);
}

final class HomeChangeCategoriesState extends HomeState {}
