import 'package:betak_store_app/Features/Screens/presentation/views/categories/widget/categories_in_main_category/list_view_categories_in_main_category.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class CategoriesInMainCategoryBodyView extends StatelessWidget {
  const CategoriesInMainCategoryBodyView(
      {super.key, required this.indexCategories});
  final int indexCategories;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: kHeight(context),
                width: kWidth(context),
                padding: const EdgeInsetsDirectional.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                        child: ListViewCategoriesInMainCategory(
                      indexCategories: indexCategories,
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
