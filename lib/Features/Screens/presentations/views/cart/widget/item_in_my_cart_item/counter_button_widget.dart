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
            ? Icons.add_circle_outline_outlined
            : Icons.remove_circle_outline_outlined,
        color: Colors.white38,
        size: 25,
      ),
    );
  }
}
