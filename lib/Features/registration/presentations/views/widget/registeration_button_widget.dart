import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });
  final String buttonName;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kHomeView);
        },
        child: Container(
          height: 60,
          width: 180,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColor.skyColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonName,
                style: TextStyles.registerationTextButtonTextStyle,
              ),
              const Icon(
                FontAwesomeIcons.angleRight,
                color: Color(0xFF013571),
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
