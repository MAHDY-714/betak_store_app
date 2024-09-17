import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/home_manager/home_state.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/layer2/categories_in_home/category_home_item_builder.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesHomeListView extends StatelessWidget {
  const CategoriesHomeListView({super.key});
  @override
  Widget build(BuildContext context) {
    var cub = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SizedBox(
          height: kWidth(context) > 340 && kWidth(context) <= 380 ? 86 : 96,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return CategoryHomeItemBuilder(
                index: index,
                onTap: () async {
                  cub.changeCategoriesInHome(
                    index: index,
                  );
                },
                borderColor: cub.categoryIndex == index
                    ? AppColor.sky4Color
                    : Colors.transparent,
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: kListTitlesCategoriesInHome.length,
          ),
        );
      },
    );
  }
}
