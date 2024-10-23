import 'package:betak_store_app/Features/Screens/presentation/views/home/layer_1_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/layer_2_view.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class HomeBodyView extends StatefulWidget {
  const HomeBodyView({super.key});

  @override
  State<HomeBodyView> createState() => _HomeBodyViewState();
}

class _HomeBodyViewState extends State<HomeBodyView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animationController.addListener(() {
      animationController.forward(from: 0.0);
    });
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColor.backgroundLayer2,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColor.backgroundLayer2,
              leading: const SizedBox(width: 0.0),
              elevation: 0,
              pinned: false,
              centerTitle: false,
              expandedHeight: kHeightCondtions(context,
                  valueIsTrue: 220.0, valueIsFalse: 265.0),
              surfaceTintColor: AppColor.backgroundLayer2,
              flexibleSpace: FlexibleSpaceBar(
                background: animationController.value.isFinite
                    ? const Layer1View()
                    : Container(
                        height: 100,
                        width: kWidth(context),
                        color: Colors.red,
                      ),
                // background: Layer1View(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) {
                  return const Layer2View();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
