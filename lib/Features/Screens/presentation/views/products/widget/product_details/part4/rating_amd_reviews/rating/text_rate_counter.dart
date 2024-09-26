import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class TextRateCounter extends StatelessWidget {
  const TextRateCounter({
    super.key,
    required this.rateCounter,
  });

  final int rateCounter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: kWidth(context) * .20,
      child: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Text(
          textAlign: TextAlign.end,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          '($rateCounter)',
          style: TextStyles.textStyle10W60,
        ),
      ),
    );
  }
}
