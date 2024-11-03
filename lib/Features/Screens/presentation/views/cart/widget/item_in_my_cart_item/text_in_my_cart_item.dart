import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class TextInMyCartItem extends StatelessWidget {
  const TextInMyCartItem({
    super.key,
    required this.title,
    this.onTapRemoveItem,
  });
  final String title;
  final void Function()? onTapRemoveItem;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidth(context) * .5,
      child: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.textStyle10W60.copyWith(
            fontSize: kWidthCondtions(context,
                valueIsTrue: 11.5, valueIsFalse: 14.0)),
      ),
    );
  }
}
