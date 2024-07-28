import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/font_family.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ItemInMainCategore extends StatelessWidget {
  const ItemInMainCategore({
    super.key,
    this.index = 0,
    required this.animationController,
  });
  final int index;
  final AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context) * .2,
      width: kWidth(context) * .65,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF364883),
        border: Border.all(
          color: AppColor.borderLogoSign,
        ),
      ),
      child: Text(
        kListMainCategoriesName[index].toString(),
        maxLines: 2,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 18,
          fontFamily: FontFamily.bitter500,
          letterSpacing: 2,
        ),
      ),
    );
  }
}
