import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/items_in_product_Item/add_to_my_cart_product_button.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:betak_store_app/core/widget/payment_button.dart';
import 'package:flutter/material.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    super.key,
    this.nameButton,
    this.onTapPayment,
    this.onTapMyCart,
    this.iconPath = AssetsImages.myCartIconAdd,
    required this.productModel,
    this.colorIndex,
  });
  final String? nameButton;
  final String iconPath;
  final void Function()? onTapPayment;
  final void Function()? onTapMyCart;
  final ProductModel? productModel;
  final int? colorIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.02),
        border: BorderDirectional(
          top: BorderSide(
            color: AppColor.skyLightColor,
            width: 1,
          ),
        ),
      ),
      alignment: AlignmentDirectional.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PaymentButton(
              onTapPayment: onTapPayment,
              nameButton: nameButton,
            ),
          ),
          const SizedBox(width: 24.0),
          AddToMyCartProductButton(
            iconSize: 45,
            defaultColor: AppColor.backgroundImageWhiteColor,
            productModel: productModel!,
            onTap: () {},
            colorIndex: colorIndex,
          ),
        ],
      ),
    );
  }
}
