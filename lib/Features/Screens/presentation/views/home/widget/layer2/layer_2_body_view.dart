import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/layer2/categories_in_home/categories_home_list_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/products_grid_view.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
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
            height: kHeight(context) >= 770 && kHeight(context) <= 810
                ? kHeight(context) * .64
                : kHeight(context) * .69,
            width: kWidth(context),
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsetsDirectional.symmetric(
              vertical: 16,
              horizontal: 8,
            ),
            decoration: Decorations.layer2BoxDecorations,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      TitleWidget(
                        title: kListTitlesCategoriesInHome[cub.categoryIndex],
                        padding: 8,
                      ),
                      const CategoriesHomeListView(),
                      const SizedBox(height: 16),
                      ConditionalBuilder(
                        condition: state is! GetProductsLoadingState,
                        builder: (context) => state is GetProductsSuccessState
                            ? ProductsGridView()
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
                                : const SizedBox(
                                    height: 10,
                                  ),
                        fallback: (context) => Container(
                            height: kHeight(context) * .47,
                            width: kWidth(context),
                            alignment: AlignmentDirectional.bottomCenter,
                            child: const CircleLoadingIndicatorWidget()),
                      ),

                      // SortRowWidgt(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
