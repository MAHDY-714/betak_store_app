import 'dart:developer';

import 'package:betak_store_app/Features/Screens/presentation/manager/nav_bar_manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/search/widget/search_input_field.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBodyView extends StatelessWidget {
  SearchBodyView({super.key});
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (value) {
        if (value == true) {
          log('the index is 0');
          BlocProvider.of<NavBarCubit>(context).currentScreen = 0;
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: kHeight(context),
            width: kWidth(context),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 32.0, start: 16.0, end: 16.0, bottom: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SearchInputField(
                    textEditingController: searchController,
                    prefixIcon: Icons.search,
                    hintText: 'Search For Your Need For home',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
