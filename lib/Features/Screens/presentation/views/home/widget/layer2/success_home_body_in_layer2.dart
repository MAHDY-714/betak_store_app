import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/layer2/categories_in_home/categories_home_list_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/products_grid_view.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/widget/title_widget.dart';
import 'package:flutter/material.dart';

class SuccessHomeBodyInLayer2 extends StatelessWidget {
  const SuccessHomeBodyInLayer2({
    super.key, required this.categoryName,
  });
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Container(
        height: kHeight(context) * .65,
        width: kWidth(context),
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: 16,
          horizontal: 8,
        ),
        decoration: Decorations.layer2BoxDecorations,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWidget(title: 'Top Categories'),
                  CategoriesHomeListView(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  ProductsGridView(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
