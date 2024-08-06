import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class LogOutButtonWidget extends StatelessWidget {
  const LogOutButtonWidget({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: kWidth(context) * .38,
        padding: const EdgeInsetsDirectional.all(8.0),
        decoration: BoxDecoration(
            color: const Color(0xFFFB4B15),
            borderRadius: BorderRadiusDirectional.circular(8),
            border: Border.all(
              color: AppColor.itemSelectedInHomeBottomNavBar.withOpacity(.5),
              width: 1,
            )),
        // ignore: prefer_const_constructors
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Log Out',
              style: TextStyles.textStyle14,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              TablerIcons.logout,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
