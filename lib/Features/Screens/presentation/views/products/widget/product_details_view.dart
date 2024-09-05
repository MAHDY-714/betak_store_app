import 'package:betak_store_app/Features/Screens/data/repo/home_repo/home_repo_implement.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/product_details_manager/product_details_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/product_details_body_view.dart';
import 'package:betak_store_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsCubit(getIt.get<HomeRepoImplement>()),
      child: const Scaffold(
        body: SafeArea(
          child: ProductDetailsBodyView(),
        ),
      ),
    );
  }
}
