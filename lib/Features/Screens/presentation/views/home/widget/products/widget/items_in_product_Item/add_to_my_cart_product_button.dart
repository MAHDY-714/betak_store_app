import 'dart:developer';

import 'package:betak_store_app/Features/Screens/data/models/my_cart_data_model/my_cart_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/my_cart_manager/my_cart_cubit.dart';
import 'package:betak_store_app/core/utils/cache_helper.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToMyCartProductButton extends StatelessWidget {
  const AddToMyCartProductButton({
    super.key,
    required this.onTap,
    required this.productModel,
    this.iconSize = 40,
    this.defaultColor,
    this.colorIndex,
  });

  final void Function()? onTap;
  final ProductModel productModel;
  final double iconSize;
  final Color? defaultColor;
  final int? colorIndex;
  @override
  Widget build(BuildContext context) {
    var cubiMyCart = BlocProvider.of<MyCartCubit>(context);
    // var cubiProductDetails = BlocProvider.of<ProductDetailsCubit>(context);
    MyCartModel myCartModel = BlocProvider.of<MyCartCubit>(context)
        .myCartModelData(productModel: productModel, colorIndex: colorIndex??0);
    String uId = FirebaseAuth.instance.currentUser?.uid ??
        CacheHelper.getData(key: 'uId');
    CollectionReference collectionPath = FirebaseFirestore.instance
        .collection('customers')
        .doc(uId)
        .collection('my_cart_products');
    return StreamBuilder<QuerySnapshot>(
      stream: collectionPath.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {
          bool id = snapshot.data!.docs
              .any((element) => element.id == productModel.productId);
          return GestureDetector(
            onTap: () async {
              cubiMyCart.addOrRemoveProductsInMyCart(
                myCartModel: myCartModel,
                productModel: productModel,
              );
              log('form button ${cubiMyCart.iconsPaths.length}');
            },
            child: BlocBuilder<MyCartCubit, MyCartState>(
              builder: (context, state) {
                return Container(
                  padding: const EdgeInsetsDirectional.all(2.0),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // border: Border.all(color: AppColor.skyColor, width: 1),
                  ),
                  child: Image(
                    image: AssetImage(
                      id
                          ? AssetsImages.myCartIconCheckIn
                          : AssetsImages.myCartIconAdd,
                    ),
                    height: iconSize,
                    width: iconSize,
                    // color: AppColor.sky4Color,

                    color: id ? null : defaultColor ?? Colors.black,
                  ),
                );
              },
            ),
          );
        } else {
          return Image(
            image: const AssetImage(
              AssetsImages.myCartIconAdd,
            ),
            height: iconSize,
            width: iconSize,
            // color: AppColor.sky4Color,

            color: defaultColor,
          );
        }
      },
    );
  }
}
