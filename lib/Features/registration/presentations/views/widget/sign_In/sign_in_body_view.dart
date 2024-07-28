import 'package:betak_store_app/Features/registration/data/model/text_form_field_model.dart';
import 'package:betak_store_app/Features/registration/presentations/manager/registration_controllers.dart';
import 'package:betak_store_app/Features/registration/presentations/views/widget/logo_sign_app_widget.dart';
import 'package:betak_store_app/Features/registration/presentations/views/widget/or_devider_widget.dart';
import 'package:betak_store_app/Features/registration/presentations/views/widget/registeration_button_widget.dart';
import 'package:betak_store_app/Features/registration/presentations/views/widget/sign_up/toggle_to_sign_up.dart';
import 'package:betak_store_app/Features/registration/presentations/views/widget/text_form_sign_field.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInBodyView extends StatelessWidget {
  const SignInBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const LogoSignApp(),
              SizedBox(
                height: kHeight(context) * .1,
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
                buttonName: 'Sign In',
                onPressed: () {},
              ),
              const OrDeviderWidget(),
              const ToggleToSignUp(
                signIn: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
