import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit(this.homeRepo) : super((InitialProductDetailsState()));
  final HomeRepo homeRepo;
  int imageIndex = 0;
  int colorIndex = 0;
  ProductResults? productResults;
  String? errorMessage;
  Future<void> getProductDetails({required String productId}) async {
    emit(GetProductDetailsLoadingState());
    if (productId.isNotEmpty) {
      var data = await homeRepo.getProductDetails(productId: productId);
      data.fold((failure) {
        log(failure.errorMessage);
        errorMessage = failure.errorMessage;
        emit(GetProductDetailsFailureState(failure.errorMessage));
      }, (productDeatails) {
        log('product Deatails for $productId');
        productResults = ProductResults.fromJson(productDeatails.toJson());
        log(productDeatails.toString());
        // log(productDeatails.productResults!.brand!.name.toString());
        emit(GetProductDetailsSuccessState(productResults: productDeatails));
      });
    } else {
      errorMessage = 'Not Found Data For This Product';
    }
  }

  void changeImagePreview({required int index}) {
    imageIndex = index;
    emit(GetProductDetailsChangeImagePreviewState());
  } 
   void choseProductColor({required int index}) {
    colorIndex = index;
    emit(GetProductDetailsChoseProductColorState());
  }
}
