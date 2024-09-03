import 'package:flutter/material.dart';

@immutable
sealed class HomeState {}

final class HomeInitialState extends HomeState {}

final class HomeGetProductLoadingState extends HomeState {}

final class HomeGetProductSuccessState extends HomeState {}

final class HomeGetProductFailureState extends HomeState {
  final String errorMessage;

  HomeGetProductFailureState(this.errorMessage);
}

final class HomeGetProductDetailsLoadingState extends HomeState {}

final class HomeGetProductDetailsSuccessState extends HomeState {}

final class HomeGetProductDetailsFailureState extends HomeState {
  final String errorMessage;

  HomeGetProductDetailsFailureState(this.errorMessage);
}
