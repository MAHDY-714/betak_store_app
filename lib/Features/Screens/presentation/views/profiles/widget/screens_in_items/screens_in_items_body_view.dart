import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ScreensInItemsBodyView extends StatelessWidget {
  const ScreensInItemsBodyView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyles.textStyle22,
        ),
      ],
    );
  }
}
