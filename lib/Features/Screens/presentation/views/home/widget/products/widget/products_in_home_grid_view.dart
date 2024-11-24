import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_item_builder.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProductsInHomeGridView extends StatelessWidget {
  const ProductsInHomeGridView({super.key,});
  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<HomeCubit>(context);
    double height =
        kHeightCondtions(context, valueIsTrue: .905, valueIsFalse: .835);
    double width = kWidthCondtions(context, valueIsTrue: .5, valueIsFalse: 0.5);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsetsDirectional.only(
              bottom: 72.0, start: 8.0, end: 8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: width / height,
            ),
            itemBuilder: (context, index) {
              return ProductItemBuilder(
                index: index,
                onTapAddToMyCart: () {
                  cubi.getProducts(qValue: 'sofa', sortValue: 'best_match');
                },
                onTapGoProductAllInfo: () async {
                  GoRouter.of(context).push(
                    AppRouter.kProductDetailsView,
                    extra: cubi.productModel[index],
                  );
                },
                imageProduct:
                    cubi.productModel[index].thumbnails![0].last.toString(),
                productModel: cubi.productModel,
              );
            },
            itemCount: cubi.productModel.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
          ),
        );
      },
    );
  }
}
