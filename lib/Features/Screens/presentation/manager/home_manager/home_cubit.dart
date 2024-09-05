import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitialState());
  final HomeRepo homeRepo;
  Future<void> getProducts({
    required String qValue,
     String? sortValue,
  }) async {
    emit(GetProductsLoadingState());
    var data = await homeRepo.getCtegoriesInHomeProduct(
      qValue: qValue,
      sortValue: sortValue??"best_match",
    );
    data.fold((failure) {
      log(failure.errorMessage);
      emit(GetProductsFailureState(failure.errorMessage));
    }, (products) {
      log('the first Product');
      log(products.toString());
      emit(GetProductsSuccessState());
    });
  }
}

/* 
// hihihih
// jiojojo
*/
//iinhj 
// #sdfsf
//fsfsaf

/*
*sdsadsfa*
"sfsfsaf"
\#dfgsf
dfsfafff
 */