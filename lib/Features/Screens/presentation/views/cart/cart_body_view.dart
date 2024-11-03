import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/no_body.dart';
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
  const CartBodyView({super.key, this.productInfoInMyCartModel});
  final MyCartModel? productInfoInMyCartModel;
  @override
  Widget build(BuildContext context) {
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
              condition: productInfoInMyCartModel != null,
              builder: (context) => Column(
                children: [
                  MyCartListView(
                    productModel: productInfoInMyCartModel!.productModel,
                    productResults: productInfoInMyCartModel!.productResults,
                    quantity: productInfoInMyCartModel!.quantity,
                    color: productInfoInMyCartModel!.color,
                    
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
  }
}
