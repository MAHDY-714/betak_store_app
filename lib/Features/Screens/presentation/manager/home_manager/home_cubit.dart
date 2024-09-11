import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_state.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitialState());
  final HomeRepo homeRepo;
  String categoryName = 'Chair';
  int categoryIndex = 0;
  List<ProductModel> productModel = [];
  Future<void> getProducts({
    required String qValue,
    String? sortValue,
  }) async {
    emit(GetProductsLoadingState());
    var data = await homeRepo.getCtegoriesInHomeProduct(
      qValue: qValue,
      sortValue: sortValue ?? "best_match",
      // sortValue: sortValue ?? "best_match",
    );
    data.fold((failure) {
      log(failure.errorMessage);
      emit(GetProductsFailureState(failure.errorMessage));
    }, (products) {
      log('the first Product');
      log(products.toString());
      productModel = products;
      emit(GetProductsSuccessState(productModel: products));
    });
  }

  void changeCategoriesInHome({required int index}) {
    categoryIndex = index;
    if (index == 0) {
      getProducts(qValue: kListTitlesCategoriesInHome[0].toString());
    } else if (index == 1) {
      getProducts(qValue: kListTitlesCategoriesInHome[1].toString());
    } else if (index == 2) {
      getProducts(qValue: kListTitlesCategoriesInHome[2].toString());
    } else if (index == 3) {
      getProducts(qValue: kListTitlesCategoriesInHome[3].toString());
    } else if (index == 4) {
      getProducts(qValue: kListTitlesCategoriesInHome[4].toString());
    } else if (index == 5) {
      getProducts(qValue: kListTitlesCategoriesInHome[5].toString());
    } else if (index == 6) {
      getProducts(qValue: kListTitlesCategoriesInHome[6].toString());
    } else if (index == 7) {
      getProducts(qValue: kListTitlesCategoriesInHome[7].toString());
    } else if (index == 8) {
      getProducts(qValue: kListTitlesCategoriesInHome[8].toString());
    } else if (index == 9) {
      getProducts(qValue: kListTitlesCategoriesInHome[9].toString());
    }
    log(kListTitlesCategoriesInHome[categoryIndex].toString());
    log(categoryIndex.toString());
  }
}
