import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OrDeviderWidget extends StatelessWidget {
  const OrDeviderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: .5,
          width: 80,
          color: Colors.white70,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            'OR',
            style: TextStyles.orAndReviewStyle,
          ),
        ),
        Container(
          height: .5,
          width: 80,
          color: Colors.white70,
        ),
      ],
    );
  }
}
