import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitialState());
  final HomeRepo homeRepo;
  Future<void> getProducts({
    required String qValue,
    required String sortValue,
  }) async {
    emit(HomeGetProductLoadingState());
    var data = await homeRepo.getCtegoriesInHomeProduct(
      qValue: qValue,
      sortValue: sortValue,
    );
    data.fold((failure) {
      log(failure.toString());
      emit(HomeGetProductFailureState(failure.toString()));
    }, (products) {
      log(products[0].thumbnails!.last.toString());
      emit(HomeGetProductSuccessState());
    });
  }

  Future<void> getProductDetails({required int productId}) async {
    emit(HomeGetProductDetailsLoadingState());
    var data = await homeRepo.getProductDetails(productId: productId);
    data.fold((failure) {
      log(failure.toString());
            emit(HomeGetProductDetailsFailureState(failure.toString()));
    }, (productDeatails) {
      log(productDeatails.images![0].images!.last);
      emit(HomeGetProductDetailsSuccessState());
    });
  }
}
