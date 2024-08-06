import 'package:betak_store_app/Features/registration/presentation/views/widget/sign_up/sign_up_body_view.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context),
      width: kWidth(context),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: AppColor.linerGredentColor1,
      ),
      child: const Scaffold(
        body: SafeArea(
          child: SingUpBodyView(),
        ),
      ),
    );
  }
}
