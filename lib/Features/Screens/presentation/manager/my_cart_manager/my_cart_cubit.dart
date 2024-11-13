import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/my_cart_data_model/my_cart_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/core/utils/cache_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'my_cart_state.dart';

class MyCartCubit extends Cubit<MyCartState> {
  MyCartCubit() : super(MyCartInitial());
  List<MyCartModel> myCartModelList = [];
  MyCartModel? myCartModel;
  // int unit = 1;
  List<int> units = [];
  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('customers');
  Future<void> addProductsInMyCart({
    required MyCartModel myCartModel,
  }) async {
    if (myCartModel.price == null) {
      log('out of stock');
    } else {
      String uId = CacheHelper.getData(key: 'uId');
      log('the uId from add product In My Cart:- $uId');
      log('the productResults.productId from add product In My Cart:- {${myCartModel.productId}}');
      try {
        log(myCartModel.toString());
        await collectionRef
            .doc(uId)
            .collection('my_cart_products')
            .doc(myCartModel.productId)
            .set(myCartModel.toJson());
        log('this add is success');
        emit(AddItemInMyCartSuccessState());
      } catch (e) {
        log(e.toString());
        emit(AddItemInMyCartFailureState(errorMessage: e.toString()));
      }
    }
  }

  Future<void> removeProductsInMyCart({
    required MyCartModel myCartModel,
    required int index,
  }) async {
    String uId = CacheHelper.getData(key: 'uId');
    log('the uId from add product In My Cart:- $uId');
    log('the productResults.productId from add product In My Cart:- {${myCartModel.productId}}');
    try {
      log(myCartModel.toString());
      await collectionRef
          .doc(uId)
          .collection('my_cart_products')
          .doc(myCartModel.productId)
          .delete();
      log('this remove is success');
      emit(RemoveItemInMyCartSuccessState());
    } catch (e) {
      log(e.toString());
      emit(RemoveItemInMyCartFailureState(errorMessage: e.toString()));
    }
  }

  MyCartModel myCartModelData({
    required ProductModel? productModel,
    required int colorIndex,
  }) {
    return myCartModel = MyCartModel(
      productId: productModel!.productId,
      image: productModel.thumbnails![0].last,
      color: productModel.variants != null
          ? productModel.variants![colorIndex].thumbnail.toString()
          : productModel.thumbnails![0].last.toString(),
      colorName: productModel.variants != null
          ? productModel.variants![colorIndex].title
          : '',
      title: productModel.title,
      price: productModel.price,
      save: productModel.priceSaving != null ? productModel.priceSaving! : 0.0,
      percentage: productModel.percentageOff != null
          ? productModel.percentageOff!
          : 0.0,
      original: productModel.priceWas != null ? productModel.priceWas! : 0.0,
      modelNumber: productModel.modelNumber,
      brand: productModel.brand ?? 'Unknown Brand',
    );
  }

  int unit = 1;
  counterPlusQuantity(
    List<MyCartModel> models,
    index,
  ) {
    String uId = CacheHelper.getData(key: 'uId');
    try {
      // units[index] = unit < 1 ? unit = 1 : unit += 1;
      models[index].quantity = models[index].quantity < 1
          ? models[index].quantity = 1
          : models[index].quantity += 1;
      log('counter plus model.quantity = ${models[index].quantity}');
      collectionRef
          .doc(uId)
          .collection('my_cart_products')
          .doc(models[index].productId)
          .update({
        'quantity': models[index].quantity,
      });
      emit(CounterPlusInMyCartSuccessState());
    } catch (e) {
      log(e.toString());
    }
  }

  counterMinusQuantity(List<MyCartModel> models, index) {
    String uId = CacheHelper.getData(key: 'uId');
    models[index].quantity = models[index].quantity <= 1
        ? models[index].quantity = 1
        : models[index].quantity -= 1;
    log('counter minus model.quantity = ${models[index].quantity}');
    collectionRef
        .doc(uId)
        .collection('my_cart_products')
        .doc(models[index].productId)
        .update({
      'quantity': models[index].quantity,
    });
    emit(CounterMinusInMyCartSuccessState());
    // return unit = model.quantity--;
  }
}
