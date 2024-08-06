import 'package:betak_store_app/Features/registration/presentation/views/widget/sign_In/sign_in_body_view.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context),
      width: kWidth(context),

      decoration: const BoxDecoration(
        gradient: AppColor.linerGredentColor1,
      ),
      child: const Scaffold(
        body: SafeArea(
          child: SignInBodyView(),
        ),
      ),
    );
  }
}
