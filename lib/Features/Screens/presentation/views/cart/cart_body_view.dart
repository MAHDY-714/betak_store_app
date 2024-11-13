import 'dart:developer';

import 'package:betak_store_app/core/utils/cache_helper.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:betak_store_app/core/widget/no_body.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/styles/app_color.dart';
import '../../../../../core/widget/payment_button.dart';
import '../../../data/models/my_cart_data_model/my_cart_model.dart';
import 'widget/my_cart_list_view.dart';

class CartBodyView extends StatelessWidget {
  const CartBodyView({super.key});
  // final MyCartModel? myCartModel;
  @override
  Widget build(BuildContext context) {
    String uId = CacheHelper.getData(key: 'uId');

    CollectionReference myCartRef = FirebaseFirestore.instance
        .collection('customers')
        .doc(uId)
        .collection('my_cart_products');
    log(myCartRef.get().toString());
    return StreamBuilder<QuerySnapshot>(
      stream: myCartRef.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        List<MyCartModel> myCartModelList = [];
        if (snapshot.hasData) {
          for (int index = 0; index < snapshot.data!.docs.length; index++) {
            myCartModelList
                .add(MyCartModel.formJson(snapshot.data!.docs[index]));
          }
          log(myCartModelList.toString());
          return Container(
            height: kHeight(context),
            width: kWidth(context),
            color: AppColor.backgroundLayer2,
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomScrollView(
              // physics: const NeverScrollableScrollPhysics(),
              slivers: [
                SliverFillRemaining(
                  child: ConditionalBuilder(
                    condition: myCartModelList.isNotEmpty,
                    builder: (context) => Column(
                      children: [
                        MyCartListView(
                          myCartModelList: myCartModelList,
                        ),
                        const SizedBox(height: 8),
                        PaymentButton(
                          nameButton: 'Payment',
                          onTapPayment: () {},
                        ),
                      ],
                    ),
                    fallback: (context) => const NoBody(
                      icon: FontAwesomeIcons.shopSlash,
                      text: 'No Product In My Cart',
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const CircleLoadingIndicatorWidget();
        }
      },
    );
  }
}
