import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/widget/payment_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    super.key,
    this.nameButton,
    this.onTapPayment,
    this.onTapMyCart,
  });
  final String? nameButton;

  final void Function()? onTapPayment;
  final void Function()? onTapMyCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.02),
        border: BorderDirectional(
          top: BorderSide(
            color: AppColor.skyLightColor,
            width: 1,
          ),
        ),
      ),
      alignment: AlignmentDirectional.center,
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
          GestureDetector(
            onTap: onTapMyCart,
            child: const Icon(
              FontAwesomeIcons.cartPlus,
              color: AppColor.backgroundImageCategore,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
