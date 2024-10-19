import 'package:betak_store_app/Features/Screens/presentation/views/categories/widget/main_category/list_view_main_category.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class CategoriesBodyView extends StatefulWidget {
  const CategoriesBodyView({super.key});

  @override
  State<CategoriesBodyView> createState() => _CategoriesBodyViewState();
}

class _CategoriesBodyViewState extends State<CategoriesBodyView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );
    animationController.forward();
    setState(() {});
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context),
      width: kWidth(context),
      color: AppColor.backgroundLayer2,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: kHeight(context),
                  width: kWidth(context),
                  padding: const EdgeInsetsDirectional.only(
                      top: 16.0, end: 16.0, start: 16.0, bottom: 64),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(child: ListViewMainCategory()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
