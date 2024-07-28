
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/styles/text_styles.dart';
import '../../../../../../core/utils/app_router.dart';

class ToggleToSignIn extends StatelessWidget {
  const ToggleToSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "I have account",
          style: TextStyles.hintTextStyle,
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kSignInView);
          },
          child: const Text(
            'Sign In',
            style: TextStyles.toggleSign,
          ),
        )
      ],
    );
  }
}
