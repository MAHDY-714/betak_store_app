import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/styles/app_color.dart';
import '../../../../../core/styles/font_family.dart';
import '../../../../../core/widget/payment_button.dart';
import '../../../data/models/my_cart_data_model/item_info_model.dart';
import 'widget/my_cart_list_view.dart';

class CartBodyView extends StatelessWidget {
  const CartBodyView({super.key, this.productInfoInMyCartModel});
  final ProductInfoInMyCartModel? productInfoInMyCartModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          if (productInfoInMyCartModel != null)
            SliverFillRemaining(
              child: Column(
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
            )
          else
            const SliverFillRemaining(
              child: Column(
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
        ],
      ),
    );
  }
}
