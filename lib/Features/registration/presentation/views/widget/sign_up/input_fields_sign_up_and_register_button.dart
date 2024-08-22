import 'dart:developer';

import 'package:betak_store_app/Features/registration/presentation/manager/register_cubit/register_cubit.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/gender_type_row.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/registeration_button_widget.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/text_form_sign_field.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/app_router.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:betak_store_app/core/widget/show_toast_message.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class InputSignUpFieldsAndRegisterButton extends StatelessWidget {
  InputSignUpFieldsAndRegisterButton({
    super.key,
  });

  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController nameTextEditingController =
      TextEditingController();
  final TextEditingController phoneTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var cub = BlocProvider.of<RegisterCubit>(context);
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
          customSnackBar(
            context,
            'the account is registered',
            ToastState.success,
          );
        } else if (state is RegisterError) {
          if (state.errorMessage == 'email address is invalid') {
            customSnackBar(
              context,
              'email address is invalid',
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
            children: [
              SignTextFormField(
                textEditingController: emailTextEditingController,
                hintText: 'Email Account',
                prefixIcon: Icons.account_circle_rounded,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'the email field is empty';
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: (email) {
                  email = emailTextEditingController.text;
                  log(emailTextEditingController.text);
                  log(email);
                },
              ),
              SignTextFormField(
                textEditingController: nameTextEditingController,
                hintText: 'User Name',
                prefixIcon: Icons.person,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'the name field is empty';
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: (name) {
                  name = nameTextEditingController.text;
                  log(nameTextEditingController.text);
                  log(name);
                },
              ),
              SignTextFormField(
                textEditingController: phoneTextEditingController,
                hintText: 'Phone Number',
                prefixIcon: Icons.call,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'the phone field is empty';
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: (phone) {
                  phone = phoneTextEditingController.text;
                  log(phoneTextEditingController.text);
                  log(phone);
                },
              ),
              SignTextFormField(
                textEditingController: passwordTextEditingController,
                hintText: 'Password',
                prefixIcon: Icons.lock_outline,
                suffixIcon: cub.visIconSate
                    ? FontAwesomeIcons.faceGrinWide
                    : FontAwesomeIcons.faceGrinBeam,
                suffixIconColor:
                    cub.visIconSate ? Colors.white24 : AppColor.sky4Color,
                isFinish: true,
                obscureText: cub.visIconSate,
                onPressed: () {
                  cub.changeVisIcon();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'the password field is empty';
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: (password) {
                  password = passwordTextEditingController.text;
                  log(passwordTextEditingController.text);
                  log(password);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GenderTypeRow(
                    genderType: cub.genderSate,
                    onChanged: (value) {
                      // value = cub.selectGenderType(value);
                    },
                    onChanged2: (value) {
                      value = cub.selectGenderType(value) ? 0 : 1;
                      log(' ${cub.genderSate ? 'male' : 'female'} ');
                    },
                  ),
                  ConditionalBuilder(
                    condition: state is RegisterLoading,
                    builder: (context) => const SizedBox(
                        width: 160, child: CircleLoadingIndicatorWidget()),
                    fallback: (context) => RegistrationButton(
                      buttonName: 'Sign Up',
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          cub.registerUser(
                            email: emailTextEditingController.text,
                            password: passwordTextEditingController.text,
                            name: nameTextEditingController.text,
                            phone: phoneTextEditingController.text,
                            gender: cub.genderSate ? 'Male' : 'Female',
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
