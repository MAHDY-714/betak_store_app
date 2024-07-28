import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class AppBarInImagesProduct extends StatelessWidget {
  const AppBarInImagesProduct({
    super.key,
    this.onTapBack,
    this.onTapMyCart,
  });
  final void Function()? onTapBack;
  final void Function()? onTapMyCart;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: Image.asset(
            AssetsImages.backIcon,
            height: 35.0,
            width: 35.0,
            color: const Color(0xff040813),
          ),
        ),
        GestureDetector(
          onTap: onTapMyCart,
          child: const Icon(
            FontAwesomeIcons.cartPlus,
            color: AppColor.backgroundLayer2,
            size: 30,
          ),
        ),
      ],
    );
  }
}
