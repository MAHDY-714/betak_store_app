import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit(this.homeRepo) : super((InitialProductDetailsState()));
  final HomeRepo homeRepo;
  Future<void> getProductDetails({required String productId}) async {
    emit(GetProductDetailsLoadingState());
    var data = await homeRepo.getProductDetails(productId: productId);
    data.fold((failure) {
      log(failure.errorMessage);
      emit(GetProductDetailsFailureState(failure.errorMessage));
    }, (productDeatails) {
      log('product Deatails for $productId');
      log(productDeatails.toString());
      // log(productDeatails.productResults!.brand!.name.toString());
      emit(GetProductDetailsSuccessState());
    });
  }
}
