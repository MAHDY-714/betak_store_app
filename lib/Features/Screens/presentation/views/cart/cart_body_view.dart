import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/styles/app_color.dart';
import '../../../../../core/styles/font_family.dart';
import '../../../../../core/widget/payment_button.dart';
import '../../../data/models/my_cart_data_model/my_cart_model.dart';
import 'widget/my_cart_list_view.dart';

class CartBodyView extends StatelessWidget {
  const CartBodyView({super.key, this.productInfoInMyCartModel});
  final MyCartModel? productInfoInMyCartModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context),
      width: kWidth(context),
      color: AppColor.backgroundLayer2,
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            child: ConditionalBuilder(
              condition: productInfoInMyCartModel != null,
              builder: (context) => Column(
                children: [
                  MyCartListView(
                      productInfoInMyCartModel: productInfoInMyCartModel!),
                  const SizedBox(height: 8),
                  PaymentButton(
                    nameButton: 'Payment',
                    onTapPayment: () {},
                  ),
                ],
              ),
              fallback: (context) => const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'No Product In My Cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.itemUnSelectedInHomeBottomNavBar,
                      fontSize: 20,
                      fontFamily: FontFamily.platypi300,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Icon(
                    FontAwesomeIcons.shopSlash,
                    color: AppColor.itemUnSelectedInHomeBottomNavBar,
                    size: 40,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
