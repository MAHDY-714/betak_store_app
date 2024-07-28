import 'package:flutter/material.dart';

import '../../../../../core/styles/text_styles.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            'New Screen',
            style: TextStyles.titleOnboardingStyle,
          )
        ],
      ),
    );
  }
}
