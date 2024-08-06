import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/layer2/categories_in_home/category_home_item_builder.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class CategoriesHomeListView extends StatelessWidget {
  const CategoriesHomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryHomeItemBuilder(
            index: index,
            onTap: () {},
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: AssetsImages.listCategoriesInHome.length,
      ),
    );
  }
}
