// ignore_for_file: avoid_print

import 'package:betak_store_app/Features/Screens/data/models/my_cart_data_model/my_cart_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/core/utils/cache_helper.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'my_cart_state.dart';

class MyCartCubit extends Cubit<MyCartState> {
  MyCartCubit() : super(MyCartInitial());
  List<MyCartModel> myCartModelList = [];
  MyCartModel? myCartModel;
  String iconPath = AssetsImages.myCartIconAdd;
  List<String> iconsPaths = [];
  List<String> iconsPathsId = [];
  List<bool> isAllItems = [];
  int indexIcon = 0;
  // int unit = 1;
  List<int> units = [];
  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('customers');

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
      // isRemove: isRemove,
    );
  }

  Future<void> addProductsInMyCart({
    required MyCartModel myCartModel,
  }) async {
    String uId = CacheHelper.getData(key: 'uId');
    if (myCartModel.price == null) {
      print('out of stock');
    } else {
      print('the uId from add product In My Cart:- $uId');
      print(
          'the productResults.productId from add product In My Cart:- {${myCartModel.productId}}');
      try {
        await collectionRef
            .doc(uId)
            .collection('my_cart_products')
            .doc(myCartModel.productId)
            .set(myCartModel.toJson())
            .then((value) {
          print('this add is success');
          emit(AddItemInMyCartSuccessState());
        });
      } catch (e) {
        print(e.toString());
        emit(AddItemInMyCartFailureState(errorMessage: e.toString()));
      }
    }
  }

  Future<void> removeProductsInMyCart({
    required MyCartModel myCartModel,
  }) async {
    String uId = CacheHelper.getData(key: 'uId');
    print('the uId from add product In My Cart:- $uId');
    print(
        'the productResults.productId from add product In My Cart:- {${myCartModel.productId}}');
    try {
      await collectionRef
          .doc(uId)
          .collection('my_cart_products')
          .doc(myCartModel.productId)
          .delete()
          .then((value) {
        iconsPaths.removeWhere((element) => element == myCartModel.productId);
        // iconsPaths.add(value.);
        print('this remove is success');
        emit(RemoveItemInMyCartSuccessState());
      });
    } catch (e) {
      print(e.toString());
      emit(RemoveItemInMyCartFailureState(errorMessage: e.toString()));
    }
  }

  Future<void> addOrRemoveProductsInMyCart({
    required MyCartModel? myCartModel,
    required ProductModel productModel,
    int colorIndex = 0,
  }) async {
    String uId = CacheHelper.getData(key: 'uId');
    final querySnapshot =
        await collectionRef.doc(uId).collection('my_cart_products').get();

    bool isAdd = querySnapshot.docs.any((element) {
      return element.id == productModel.productId;
    });
    if (isAdd == false) {
      addProductsInMyCart(myCartModel: myCartModel!);
    } else if (isAdd == true) {
      removeProductsInMyCart(myCartModel: myCartModel!);
      iconsPaths.remove(productModel.productId);
    } else {
      addProductsInMyCart(myCartModel: myCartModel!);
    }
  }

  counterPlusQuantity(
    List<MyCartModel> models,
    index,
  ) {
    String uId = CacheHelper.getData(key: 'uId');
    try {
      models[index].quantity = models[index].quantity < 1
          ? models[index].quantity = 1
          : models[index].quantity += 1;
      print('counter plus model.quantity = ${models[index].quantity}');
      collectionRef
          .doc(uId)
          .collection('my_cart_products')
          .doc(models[index].productId)
          .update({
        'quantity': models[index].quantity,
      });
      emit(CounterPlusInMyCartSuccessState());
    } catch (e) {
      print(e.toString());
    }
  }

  counterMinusQuantity(List<MyCartModel> models, index) {
    String uId = CacheHelper.getData(key: 'uId');
    models[index].quantity = models[index].quantity <= 1
        ? models[index].quantity = 1
        : models[index].quantity -= 1;
    print('counter minus model.quantity = ${models[index].quantity}');
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
