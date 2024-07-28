import 'package:betak_store_app/Features/registration/data/model/text_form_field_model.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/widget/borders_styles.dart';
import 'package:flutter/material.dart';

class SignUpTextFormField extends StatelessWidget {
  const SignUpTextFormField({
    super.key,
    required this.textForemFieldAtribbuteModel,
    this.isCounter = false,
    this.isFinish = false,
    this.obscureText = false,
    this.onPressed,
  });
  final TextForemFieldAtribbuteModel textForemFieldAtribbuteModel;
  final bool isCounter;
  final bool isFinish;
  final bool obscureText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: TextFormField(
        controller: textForemFieldAtribbuteModel.textEditingController,
        decoration: InputDecoration(
          enabledBorder: underLineInputBorder(),
          focusedBorder: underLineInputBorder(
            raduis: 10,
            borderColor: AppColor.sky4Color,
            width: 3,
          ),
          errorBorder: underLineInputBorder(
            borderColor: AppColor.errorBorderAndRemoveAndIcons,
            raduis: 10,
          ),
          focusedErrorBorder: underLineInputBorder(
            borderColor: AppColor.focusederrorBorderAndRemove,
            raduis: 10,
            width: 3,
          ),
          filled: true,
          fillColor: Colors.grey.withOpacity(.04),
          contentPadding: const EdgeInsetsDirectional.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          counterText:
              '${textForemFieldAtribbuteModel.counterInput} /${isCounter ? textForemFieldAtribbuteModel.counterHeighLimet : textForemFieldAtribbuteModel.counterLowLimet}',
          counterStyle: TextStyles.counterTextFieldStyle,
          hintText: textForemFieldAtribbuteModel.hintText,
          hintStyle: TextStyles.hintTextStyle,
          hintFadeDuration: const Duration(seconds: 1),
          prefixIcon: Icon(
            textForemFieldAtribbuteModel.prefixIcon,
            color: Colors.white70,
            size: 25,
          ),
          suffixIcon: textForemFieldAtribbuteModel.suffixIcon != null
              ? IconButton(
                  icon: Icon(
                    textForemFieldAtribbuteModel.suffixIcon,
                    color: Colors.white24,
                    size: 20,
                  ),
                  onPressed: onPressed,
                )
              : null,
        ),
        obscureText: obscureText,
        style: TextStyles.textStyle16,
        textInputAction: isFinish ? TextInputAction.done : TextInputAction.next,
      ),
    );
  }
}

// FontAwesomeIcons.faceGrinBeam => vis on
// FontAwesomeIcons.faceGrinWide => vis off