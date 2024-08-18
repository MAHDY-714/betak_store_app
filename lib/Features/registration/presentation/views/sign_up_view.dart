import 'package:betak_store_app/Features/registration/data/repo/registration_repo_implement.dart';
import 'package:betak_store_app/Features/registration/presentation/manager/register_cubit/register_cubit.dart';
import 'package:betak_store_app/Features/registration/presentation/views/widget/sign_up/sign_up_body_view.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(
        getIt.get<RegistrationRepoImaplement>(),
      ),
      child: Container(
        height: kHeight(context),
        width: kWidth(context),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: AppColor.linerGredentColor1,
        ),
        child: const Scaffold(
          body: SafeArea(
            child: Center(child: SingUpBodyView()),
          ),
          resizeToAvoidBottomInset: true,
        ),
      ),
    );
  }
}
