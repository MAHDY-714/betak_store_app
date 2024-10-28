import 'dart:developer';

import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/categories/widget/categories_in_main_category/item_category_in_main_category.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListViewCategoriesInMainCategory extends StatelessWidget {
  const ListViewCategoriesInMainCategory(
      {super.key, required this.indexCategories});
  final int indexCategories;

  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int indexItem) {
            return ItemCategoryInMainCategory(
              //indexCategories => take IndexCategories to Select list categories
              //indexItem => take IndexItem to Select items in list categories
              imageCategories: AssetsImages.listCategoriesItems[indexCategories]
                  [indexItem],
              nameCategories: kListInMainCategoriesName[indexCategories]
                      [indexItem]
                  .toString(),
              onTap: () {
                cubi.getCategoriesProducts(
                    qValue: kListInMainCategoriesName[indexCategories]
                        [indexItem]);
                GoRouter.of(context).push(
                  AppRouter.kProductsBodyView,
                  extra: kListInMainCategoriesName[indexCategories][indexItem],
                );
                log(
                  kListInMainCategoriesName[indexCategories][indexItem],
                );
              },
            );
          },
          itemCount: AssetsImages.listCategoriesItems[indexCategories].length,
        );
      },
    );
  }
}
