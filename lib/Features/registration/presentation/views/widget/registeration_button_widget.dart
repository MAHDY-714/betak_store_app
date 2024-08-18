import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({
    super.key,
    required this.buttonName,
    required this.onTap,
  });
  final String buttonName;
  final Future<void> Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: onTap,
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
                color: AppColor.blueColor,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
