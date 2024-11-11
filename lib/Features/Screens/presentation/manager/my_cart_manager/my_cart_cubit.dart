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
  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('customers');
  Future<void> addProductsInMyCart({
    // required String? productId,
    // required String? image,
    // required String? color,
    // required String? title,
    // required double? price,
    // required double? save,
    // required double? percentage,
    // required double? original,
    // required String? modelNumber,
    // required String? sku,
    // int quantity = 1,

    required MyCartModel myCartModel,
  }) async {
    String uId = CacheHelper.getData(key: 'uId');
    log('the uId from add product In My Cart:- $uId');
    log('the productResults.productId from add product In My Cart:- {${myCartModel.productId}}');
    try {
      // MyCartModel model = MyCartModel(
      //   productId: productId,
      //   image: image,
      //   title: title,
      //   price: price,
      //   save: save,
      //   percentage: percentage,
      //   original: original,
      //   modelNumber: modelNumber,
      //   sku: sku,
      //   color: color,
      // );

      log(myCartModel.price.toString());
      await collectionRef
          .doc(uId)
          .collection('my_cart_products')
          .doc(myCartModel.productId)
          .set(myCartModel.toJson());
      log('this add success');
      emit(AddItemInMyCartSuccessState());
    } catch (e) {
      log(e.toString());
      emit(AddItemInMyCartFailureState(errorMessage: e.toString()));
    }
  }

  Future<void> getProductsInMyCart() async {
    String uId = CacheHelper.getData(key: 'uId');
    emit(MyCartLoadingState());
    /*
    collection('name collection').get() => return your data 1 one time
    collection('name collection').snapShots() => retrun your data real time
    
    */

    await collectionRef.doc(uId).collection('my_cart_products').doc().get();
    await collectionRef.doc(uId).collection('my_cart_products').snapshots();
    log('this gte is Success success');
    emit(MyCartSuccessState(myCartModelList: myCartModelList));
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
}
