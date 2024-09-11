import 'dart:ffi';

import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/layer2/categories_in_home/categories_home_list_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/layer2/success_home_body_in_layer2.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:betak_store_app/core/widget/error_text_widget.dart';
import 'package:betak_store_app/core/widget/title_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Layer2BodyView extends StatelessWidget {
  const Layer2BodyView({super.key});
  @override
  Widget build(BuildContext context) {
    var cub = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Container(
            height: kHeight(context) * .65,
            width: kWidth(context),
            padding: const EdgeInsetsDirectional.symmetric(
              vertical: 16,
              horizontal: 8,
            ),
            decoration: const BoxDecoration(
                color: AppColor.backgroundLayer2,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(16),
                  topEnd: Radius.circular(16),
                )),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      TitleWidget(
                          title:
                              kListTitlesCategoriesInHome[cub.categoryIndex]),
                      const CategoriesHomeListView(),
                      // SortRowWidgt(),
                      ConditionalBuilder(
                        condition: state is! GetProductsLoadingState,
                        builder: (context) => state is GetProductsSuccessState
                            ? SuccessHomeBodyInLayer2(
                                categoryName: kListTitlesCategoriesInHome[
                                    cub.categoryIndex])
                            : state is GetProductsFailureState
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        SizedBox(
                                          height: kHeight(context) * .32,
                                        ),
                                        ErrorTextWidget(
                                          errorMessage: state.errorMessage,
                                        ),
                                      ])
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: kHeight(context) * .32,
                                      ),
                                      const CircleLoadingIndicatorWidget(),
                                    ],
                                  ),
                        fallback: (context) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: kHeight(context) * .32,
                            ),
                            const CircleLoadingIndicatorWidget(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
