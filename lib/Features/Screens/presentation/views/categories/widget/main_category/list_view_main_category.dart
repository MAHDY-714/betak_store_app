import 'dart:developer';

import 'package:betak_store_app/Features/Screens/presentation/views/categories/widget/main_category/item_main_categore.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListViewMainCategory extends StatelessWidget {
  const ListViewMainCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ItemMainCategore(
          images: AssetsImages.listMainCategories[index],
          onTap: () {
            GoRouter.of(context).push(
              AppRouter.kCategoriesInMainCategoryView,
              extra: index,
            );
            log(index.toString());
          },
          nameCategories: kListMainCategoriesName[index].toString(),
        );
      },
      itemCount: AssetsImages.listMainCategories.length,
      physics: const NeverScrollableScrollPhysics(),
      // physics: const BouncingScrollPhysics(),
      // shrinkWrap: true,
    );
  }
}
