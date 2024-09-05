import 'package:flutter/material.dart';

@immutable
sealed class HomeState {}

final class HomeInitialState extends HomeState {}

final class GetProductsLoadingState extends HomeState {}

final class GetProductsSuccessState extends HomeState {}

final class GetProductsFailureState extends HomeState {
  final String errorMessage;

  GetProductsFailureState(this.errorMessage);
}

final class HomeGetProductDetailsLoadingState extends HomeState {}

final class HomeGetProductDetailsSuccessState extends HomeState {}

final class HomeGetProductDetailsFailureState extends HomeState {
  final String errorMessage;

  HomeGetProductDetailsFailureState(this.errorMessage);
}
