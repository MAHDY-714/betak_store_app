import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo_implement.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/layer_1_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/layer_2_view.dart';
import 'package:betak_store_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(getIt.get<HomeRepoImplement>()),
      child: const SafeArea(
        child: Stack(
          children: [
            Layer1View(),
            Layer2View(),
          ],
        ),
      ),
    );
  }
}
