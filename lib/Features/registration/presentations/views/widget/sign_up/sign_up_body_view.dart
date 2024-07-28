import 'package:betak_store_app/Features/registration/data/model/text_form_field_model.dart';
import 'package:betak_store_app/Features/registration/presentations/manager/registration_controllers.dart';
import 'package:betak_store_app/Features/registration/presentations/views/widget/logo_sign_app_widget.dart';
import 'package:betak_store_app/Features/registration/presentations/views/widget/or_devider_widget.dart';
import 'package:betak_store_app/Features/registration/presentations/views/widget/registeration_button_widget.dart';
import 'package:betak_store_app/Features/registration/presentations/views/widget/sign_In/toggle_to_sign_in.dart';
import 'package:betak_store_app/Features/registration/presentations/views/widget/text_form_sign_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingUpBodyView extends StatelessWidget {
  const SingUpBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const LogoSignApp(),
            const SizedBox(
              height: 32,
            ),
            SignUpTextFormField(
              textForemFieldAtribbuteModel: TextForemFieldAtribbuteModel(
                textEditingController:
                    RegistrationControllers.emailTextEditingController,
                counterInput: 5,
                hintText: 'Email Account',
                prefixIcon: Icons.account_circle_rounded,
              ),
            ),
            SignUpTextFormField(
              textForemFieldAtribbuteModel: TextForemFieldAtribbuteModel(
                textEditingController:
                    RegistrationControllers.nameTextEditingController,
                counterInput: 5,
                hintText: 'User Name',
                prefixIcon: Icons.person,
              ),
            ),
            SignUpTextFormField(
              textForemFieldAtribbuteModel: TextForemFieldAtribbuteModel(
                textEditingController:
                    RegistrationControllers.phoneTextEditingController,
                counterInput: 5,
                hintText: 'Phone Number',
                prefixIcon: Icons.call,
              ),
            ),
            SignUpTextFormField(
              textForemFieldAtribbuteModel: TextForemFieldAtribbuteModel(
                textEditingController:
                    RegistrationControllers.passwordTextEditingController,
                counterInput: 5,
                hintText: 'Password',
                prefixIcon: Icons.lock_outline,
                suffixIcon: FontAwesomeIcons.faceGrinBeam,
              ),
              isFinish: true,
              obscureText: true,
            ),
            RegistrationButton(
              buttonName: 'Sign Up',
              onPressed: () {},
            ),
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
