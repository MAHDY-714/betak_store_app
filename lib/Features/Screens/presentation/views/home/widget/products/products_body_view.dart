import 'package:betak_store_app/core/widget/title_widget.dart';
import 'package:flutter/material.dart';

class ProductsBodyView extends StatelessWidget {
  const ProductsBodyView({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TitleWidget(
                    title: title ?? 'All Product',
                    paddingH: 8.0,
                  ),
                  // ProductsGridView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
