import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class CounterButtonWidget extends StatelessWidget {
  const CounterButtonWidget({
    super.key,
    this.onTap,
    this.counterIcon = true,
  });
  final Function()? onTap;
  final bool counterIcon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        counterIcon
            ? Icons.add_circle_outline_rounded
            : Icons.remove_circle_outline_outlined,
        color: counterIcon ? Colors.white70 : Colors.white54,
        size: kWidthCondtions(context, valueIsTrue: 30.0, valueIsFalse: 35.0),
      ),
    );
  }
}
