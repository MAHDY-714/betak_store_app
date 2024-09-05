import 'package:flutter/material.dart';

@immutable
sealed class ProductDetailsState {}

final class InitialProductDetailsState extends ProductDetailsState {}

final class GetProductDetailsLoadingState extends ProductDetailsState {}

final class GetProductDetailsSuccessState extends ProductDetailsState {}

final class GetProductDetailsFailureState extends ProductDetailsState {
  final String errorMessage;

  GetProductDetailsFailureState(this.errorMessage);
}
