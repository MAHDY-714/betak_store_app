import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/font_family.dart';
import 'package:flutter/material.dart';

class NoBody extends StatelessWidget {
  const NoBody({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: AppColor.itemUnSelectedInHomeBottomNavBar,
      fontSize: 20,
      fontFamily: FontFamily.platypi300,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
        const SizedBox(height: 16),
        Icon(
          icon,
          color: AppColor.itemUnSelectedInHomeBottomNavBar,
          size: 40,
        )
      ],
    );
  }
}
