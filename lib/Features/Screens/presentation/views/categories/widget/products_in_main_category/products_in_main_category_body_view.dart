import 'dart:developer';

import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/categories/widget/products_in_main_category/products_in_categories_grid_view.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/circle_loading_indicator.dart';
import 'package:betak_store_app/core/widget/title_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsInMainCategoryBodyView extends StatelessWidget {
  const ProductsInMainCategoryBodyView({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        log('width = ${kWidth(context)}');
        log('height = ${kHeight(context)}');
        return SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                // leadingWidth: kWidth(context),
                leading: const SizedBox(width: 0.0),
                backgroundColor: AppColor.skyNightColor,
                shape: const BorderDirectional(
                  bottom: BorderSide(
                    color: AppColor.itemUnSelectedInHomeBottomNavBar,
                    width: 1,
                  ),
                ),
                elevation: 0,
                pinned: false,
                centerTitle: false,
                expandedHeight: kHeightCondtions(context,
                    valueIsTrue: 60.0, valueIsFalse: 70.0),
                surfaceTintColor: AppColor.backgroundLayer2,
                flexibleSpace: FlexibleSpaceBar(
                  background: TitleWidget(
                    title: title ?? 'All Product',
                    paddingH: 8.0,
                    fontSizeT: 16.0,
                    fontSizeF: 25.0,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 8.0, end: 8.0, bottom: 16.0, top: 8.0),
                    child: ConditionalBuilder(
                      condition: state is GetCategoriesProductsSuccessState,
                      builder: (context) => ProductsInCategoriesGridView(
                        productModelFormCategories:
                            cubi.productModelFormCategories,
                      ),
                      fallback: (context) => SizedBox(
                          height: kHeight(context) * .8,
                          child: const CircleLoadingIndicatorWidget()),
                    ),
                  ),
                  childCount: 1,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
