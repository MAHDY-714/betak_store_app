import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo_implement.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit/product_details_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/product_details_body_view.dart';
import 'package:betak_store_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsCubit(getIt.get<HomeRepoImplement>())
        ..getProductDetails(productId: productModel.productId!),
      child: Scaffold(
        body: SafeArea(
          child: ProductDetailsBodyView(
            productModel: productModel,
          ),
        ),
      ),
    );
  }
}
