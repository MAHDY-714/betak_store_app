import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({
    super.key,
    required this.onTapPayment,
    required this.nameButton,
  });

  final void Function()? onTapPayment;
  final String? nameButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapPayment,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF5A60B9),
          gradient: const LinearGradient(
            begin: AlignmentDirectional.centerStart,
            end: AlignmentDirectional.centerEnd,
            colors: [
              Color(0xFF4C51A3),
              Color(0xFF5A60B9),
              Color(0xFF6067CD),
              Color(0xFF5A60B9),
              Color(0xFF4C51A3),
            ],
          ),
          // color: Color(0xFF591DFE),
          // color: AppColor.green3Color,
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
        child: Text(
          nameButton ?? 'Buy',
          style: TextStyles.textRateValueInProductDetailsStyle,
        ),
      ),
    );
  }
}
