import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/widget/borders_styles.dart';
import 'package:flutter/material.dart';

class SignTextFormField extends StatelessWidget {
  const SignTextFormField({
    super.key,
    this.isFinish = false,
    this.obscureText = false,
    this.onPressed,
    required this.textEditingController,
    required this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    required this.hintText,
    this.onFieldSubmitted,
    this.onChanged,
    this.validator,
    // required this.formKey,
  });
  final TextEditingController textEditingController;
  final bool isFinish;
  final bool obscureText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final String hintText;
  final void Function()? onPressed;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          /*
          enabledUnderLineInputBorder
focusedUnderLineInputBorder
errorUnderLineInputBorder
focusedErrorUnderLineInputBorder
           */
          enabledBorder: enabledUnderLineInputBorder,
          focusedBorder: focusedUnderLineInputBorder,
          errorBorder: errorUnderLineInputBorder,
          focusedErrorBorder: focusedErrorUnderLineInputBorder,
          filled: true,
          fillColor: Colors.grey.withOpacity(.04),
          contentPadding: const EdgeInsetsDirectional.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          hintText: hintText,
          hintStyle: TextStyles.hintTextStyle,
          errorStyle: TextStyles.textStyle10R,
          hintFadeDuration: const Duration(seconds: 1),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.white70,
            size: 25,
          ),
          suffixIcon: suffixIcon != null
              ? IconButton(
                  icon: Icon(
                    suffixIcon,
                    color: suffixIconColor,
                    size: 20,
                  ),
                  onPressed: onPressed,
                )
              : null,
        ),
        cursorErrorColor: AppColor.focusederrorBorderAndRemove,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        validator: validator,
        obscureText: obscureText,
        style: TextStyles.textStyle16,
        keyboardType: TextInputType.emailAddress,
        textInputAction: isFinish ? TextInputAction.done : TextInputAction.next,
      ),
    );
  }
}

// FontAwesomeIcons.faceGrinBeam => vis on
// FontAwesomeIcons.faceGrinWide => vis off