import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class NameAppInHomeLayer1 extends StatelessWidget {
  const NameAppInHomeLayer1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'BETAK-STORE',
      style: TextStyles.nameAppTitileInLayer1,
    );
  }
}