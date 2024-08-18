import 'package:betak_store_app/Features/registration/presentation/views/widget/logo_sign_app_widget.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/or_devider_widget.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/sign_In/input_fields_sign_in_and_login_button.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/sign_up/toggle_to_sign_up.dart';
import 'package:flutter/material.dart';

class SignInBodyView extends StatelessWidget {
  const SignInBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const LogoSignApp(),
            const SizedBox(height: 32),
            InputSignInFieldsAndLoginButton(),
            const OrDeviderWidget(),
            const ToggleToSignUp(
              signIn: true,
            ),
          ],
        ),
      ),
    );
  }
}
