import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class InfoProduct extends StatelessWidget {
  const InfoProduct({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-.85, 1.18),
      child: Container(
        height: 95,
        width: kWidth(context) * .3,
        alignment: AlignmentDirectional.centerStart,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: const Color(0xFF507EFF).withOpacity(.04),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ikea Sofa ikea Sofa ikea Sofa ikea Sofa',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.nameProductStyleInInLayer2,
            ),
            Text(
              '300\$',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.priceStyleInInLayer2,
            ),
          ],
        ),
      ),
    );
  }
}
