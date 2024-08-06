import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class LogoSignApp extends StatelessWidget {
  const LogoSignApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.borderLogoSign,
          width: 2.5,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Image.asset(
          height: 100,
          AssetsImages.logo,
        ),
      ),
    );
  }
}
