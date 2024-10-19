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
      // color: Colors.blue,
      height: 40,
      width: kWidthCondtions(
        context,
        valueIsTrue: kWidth(context) * .20,
        valueIsFalse: kWidth(context) * .22,
      ),
      child: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Text(
          textAlign: TextAlign.end,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          '($rateCounter)',
          // '(9999999999)',
          style: kWidthCondtions(
            context,
            valueIsTrue: TextStyles.textStyle10W60,
            valueIsFalse: TextStyles.textStyle10W60.copyWith(fontSize: 13),
          ),
        ),
      ),
    );
  }
}
