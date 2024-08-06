import 'package:betak_store_app/Features/Screens/presentation/views/home/layer_1_view.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/layer_2_view.dart';
import 'package:flutter/material.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Stack(
        children: [
          Layer1View(),
          Layer2View(),
        ],
      ),
    );
  }
}
