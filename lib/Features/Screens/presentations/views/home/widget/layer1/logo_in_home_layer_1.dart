import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class LogoInHomeLayer1 extends StatelessWidget {
  const LogoInHomeLayer1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        color: AppColor.logoBackgoundColor,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white70,
          width: 2.0,
        ),
      ),
      child: Image.asset(
        AssetsImages.logo,
        height: 35,
        width: 35,
      ),
    );
  }
}
