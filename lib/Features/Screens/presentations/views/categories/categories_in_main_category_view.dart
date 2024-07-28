import 'package:betak_store_app/Features/Screens/presentations/views/categories/categories_in_main_category_body_view.dart';
import 'package:flutter/material.dart';

class CategoriesInMainCategoryView extends StatelessWidget {
  const CategoriesInMainCategoryView(
      {super.key, required this.indexCategories});
  final int indexCategories;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoriesInMainCategoryBodyView(
        indexCategories: indexCategories,
      ),
    );
  }
}
