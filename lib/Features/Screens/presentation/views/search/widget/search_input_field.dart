import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/app_router.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/borders_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchInputField extends StatelessWidget {
  const SearchInputField({
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
          enabledBorder: BordersStyle.searchEnabledUnderLineInputBorder,
          focusedBorder: BordersStyle.searchFocusedUnderLineInputBorder,
          errorBorder: BordersStyle.searchErrorUnderLineInputBorder,
          focusedErrorBorder:
              BordersStyle.searchFocusedErrorUnderLineInputBorder,
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

class SearchInputInHome extends StatelessWidget {
  const SearchInputInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSearchBodyView);
      },
      child: Container(
        height: 50,
        width: kWidth(context),
        padding: const EdgeInsetsDirectional.only(start: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFFFFFFF),
            width: 2,
          ),
          color: Colors.white70,
        ),
        child: const Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.black26,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Search Your Furniture Home',
              style: TextStyles.searchInHome,
            ),
          ],
        ),
      ),
    );
  }
}
