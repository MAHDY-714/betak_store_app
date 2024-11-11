import 'dart:developer';

import 'package:betak_store_app/Features/registration/presentation/manager/login_cubit/login_cubit.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/registeration_button_widget.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/text_form_sign_field.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:betak_store_app/core/widget/show_toast_message.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class InputSignInFieldsAndLoginButton extends StatelessWidget {
  InputSignInFieldsAndLoginButton({
    super.key,
  });

  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var cub = BlocProvider.of<LoginCubit>(context);
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          customSnackBar(
            context,
            'the login is success',
            ToastState.success,
          );
          GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
        } else if (state is LoginError) {
          if (state.errorMessage == 'the email address is not valid') {
            customSnackBar(
              context,
              'the email address is not valid',
              ToastState.warning,
            );
          } else {
            customSnackBar(
              context,
              state.errorMessage,
              ToastState.error,
            );
          }
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignTextFormField(
                textEditingController: emailTextEditingController,
                hintText: 'Email Account',
                prefixIcon: Icons.account_circle_rounded,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'the name field is empty';
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: (email) {
                  emailTextEditingController.text = email;
                  log(emailTextEditingController.text);
                  log(email);
                },
              ),
              SignTextFormField(
                textEditingController: passwordTextEditingController,
                hintText: 'Password',
                prefixIcon: Icons.lock_outline,
                suffixIcon: cub.visIconSate
                    ? FontAwesomeIcons.faceGrinBeam
                    : FontAwesomeIcons.faceGrinWide,
                suffixIconColor:
                    cub.visIconSate ? Colors.white24 : AppColor.sky4Color,
                isFinish: true,
                obscureText: cub.visIconSate,
                onPressed: () {
                  cub.changeVisIcon();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'the name field is empty';
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: (password) {
                  passwordTextEditingController.text = password;
                  log(passwordTextEditingController.text);
                  log(password);
                },
              ),
              ConditionalBuilder(
                condition: state is LoginLoading,
                builder: (context) => const CircleLoadingIndicatorWidget(),
                fallback: (context) => RegistrationButton(
                  buttonName: 'Sign In',
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      cub
                          .loginUser(
                            email: emailTextEditingController.text,
                            password: passwordTextEditingController.text,
                          )
                          .then((value) async {});
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
