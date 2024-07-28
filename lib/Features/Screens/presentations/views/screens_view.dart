import 'package:betak_store_app/Features/Screens/presentations/manager/nav_bar_manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/widget/bottom_nav_bar/bottom_nav_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreensView extends StatelessWidget {
  const ScreensView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<NavBarCubit>(context);
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(child: cubi.screens[cubi.currentScreen]),
          bottomNavigationBar: const BottomNavBarView(),
        );
      },
    );
  }
}
