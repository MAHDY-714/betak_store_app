import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/products_grid_view.dart';
import 'package:flutter/material.dart';

class SuccessHomeBodyInLayer2 extends StatelessWidget {
  const SuccessHomeBodyInLayer2({
    super.key,
    required this.categoryName,
  });
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Column(
        children: [
          ProductsGridView(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
