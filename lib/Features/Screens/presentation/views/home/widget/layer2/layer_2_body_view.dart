import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/layer2/categories_in_home/categories_home_list_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/products_in_home_grid_view.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:betak_store_app/core/widget/error_text_widget.dart';
import 'package:betak_store_app/core/widget/title_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Layer2BodyView extends StatelessWidget {
  const Layer2BodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cub = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            TitleWidget(
              title: kListTitlesCategoriesInHome[cub.categoryIndex],
              paddingH: 8,
            ),
            const CategoriesHomeListView(),
            const SizedBox(height: 16),
            ConditionalBuilder(
              condition: state is! GetProductsLoadingState,
              builder: (context) => state is GetProductsSuccessState
                  ? const ProductsInHomeGridView()
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
                          ],
                        )
                      : const SizedBox(
                          height: 10,
                        ),
              fallback: (context) => Container(
                  height: kHeight(context) * .47,
                  width: kWidth(context),
                  alignment: AlignmentDirectional.bottomCenter,
                  child: const CircleLoadingIndicatorWidget()),
            ),
            // const SizedBox(height: 64),
            // SortRowWidgt(),
          ],
        );
      },
    );
  }
}
