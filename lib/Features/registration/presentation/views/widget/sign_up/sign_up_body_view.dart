import 'package:betak_store_app/Features/registration/presentation/views/widget/logo_sign_app_widget.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/or_devider_widget.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/sign_In/toggle_to_sign_in.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/sign_up/input_fields_sign_up_and_register_button.dart';
import 'package:flutter/material.dart';

class SingUpBodyView extends StatelessWidget {
  const SingUpBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const LogoSignApp(),
            const SizedBox(height: 32),
            InputSignUpFieldsAndRegisterButton(),
            // const SizedBox(height: 8),
            const OrDeviderWidget(),

            const ToggleToSignIn(),
          ],
        ),
      ),
    );
  }
}
// FontAwesomeIcons.faceGrinBeam => vis on
// FontAwesomeIcons.faceGrinWide => vis off
