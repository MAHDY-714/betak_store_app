import 'dart:developer';

import 'package:betak_store_app/Features/Screens/presentation/manager/my_cart_manager/my_cart_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/nav_bar_manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:betak_store_app/core/utils/cache_helper.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:betak_store_app/core/widget/no_body.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    var cubiNavBar = BlocProvider.of<NavBarCubit>(context).currentScreen;
    var cubi = BlocProvider.of<MyCartCubit>(context);
    CollectionReference myCartRef = FirebaseFirestore.instance
        .collection('customers')
        .doc(uId)
        .collection('my_cart_products');
    log(myCartRef.get().toString());
    return StreamBuilder<QuerySnapshot>(
      stream: myCartRef.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        cubi.myCartModelList.clear();
        if (snapshot.hasData) {
          for (int index = 0; index < snapshot.data!.docs.length; index++) {
            cubi.myCartModelList
                .add(MyCartModel.formJson(snapshot.data!.docs[index]));
          }
          log(cubi.myCartModelList.toString());
          return Container(
            height: kHeight(context),
            width: kWidth(context),
            color: AppColor.backgroundLayer2,
            child: CustomScrollView(
              // physics: const NeverScrollableScrollPhysics(),
              slivers: [
                SliverFillRemaining(
                  fillOverscroll: true,
                  child: ConditionalBuilder(
                    condition: cubi.myCartModelList.isNotEmpty,
                    builder: (context) => Column(
                      children: [
                        const SizedBox(height: 8.0),
                        MyCartListView(
                          myCartModelList: cubi.myCartModelList,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: cubiNavBar == 1 ? 8.0 : 0,
                            end: cubiNavBar == 1 ? 8.0 : 0,
                            top: cubiNavBar == 1 ? 8.0 : 8,
                            bottom: cubiNavBar == 1 ? 64.0 : 0,
                          ),
                          child: PaymentButton(
                            nameButton: 'Payment',
                            onTapPayment: () {},
                          ),
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
