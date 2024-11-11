import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/my_cart_data_model/my_cart_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit(this.homeRepo) : super((InitialProductDetailsState()));
  final HomeRepo homeRepo;
  int imageIndex = 0;
  String? currentImage;
  String? prevImage;
  int colorIndex = 0;
  ProductResults? productResults;
  MyCartModel? myCartModel;
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

  void changeImagePreview(
      {required int index,
      required AnimationController animationController,
      ProductResults? productResults}) {
    currentImage = productResults!.images![index].last.toString();
    animationController.forward(from: 0.0).whenComplete(() {
      imageIndex = index;
      prevImage = currentImage;
    });
    // }
    emit(GetProductDetailsChangeImagePreviewState());
  }

  void choseProductColor({required int index}) {
    colorIndex = index;
    emit(GetProductDetailsChoseProductColorState());
  }
}
