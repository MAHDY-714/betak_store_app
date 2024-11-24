import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddToMyWishListProductButton extends StatelessWidget {
  const AddToMyWishListProductButton({
    super.key,
    required this.onTap,
  });

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Icon(
        FontAwesomeIcons.solidHeart,
        color: AppColor.backgroundForAllItemsRedColor,
      ),
    );
  }
}
