import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ToggleToSignUp extends StatelessWidget {
  const ToggleToSignUp({
    super.key,
    this.signIn = false,
  });
  final bool signIn;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          signIn ? "I don't have any account" : "I have account",
          style: TextStyles.hintTextStyle,
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kSignUpView);
          },
          child: const Text(
            'Sign Up',
            style: TextStyles.toggleSign,
          ),
        )
      ],
    );
  }
}
