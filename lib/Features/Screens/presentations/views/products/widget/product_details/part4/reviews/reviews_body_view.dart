import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part4/reviews/rate_bar_list_view.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class RateBodyView extends StatelessWidget {
  const RateBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(context),
      height: kHeight(context) * .35,
      decoration: rateBodyViewBoxDecorations(),
      child: Container(
        decoration: rateBodyViewBoxDecorations(
            // bodyColor: const Color(0xFF0C0F19),
            ),
        width: kWidth(context),
        child: const RateListView(),
      ),
    );
  }

  BoxDecoration rateBodyViewBoxDecorations({
    bool isBorderColor = true,
    Color bodyColor = AppColor.backgroundForAllItemsInProductDarkColor,
  }) {
    return BoxDecoration(
      color: bodyColor,
      border: isBorderColor == true
          ? const BorderDirectional(
              top: BorderSide(
                color: AppColor.backgroundImageCategore,
                width: .5,
              ),
              start: BorderSide(
                color: AppColor.backgroundImageCategore,
                width: .01,
              ),
              end: BorderSide(
                color: AppColor.backgroundImageCategore,
                width: .01,
              ),
              bottom: BorderSide(
                color: AppColor.backgroundImageCategore,
                width: .01,
              ),
            )
          : null,
      borderRadius: const BorderRadiusDirectional.only(
        bottomStart: Radius.circular(0.0),
        bottomEnd: Radius.circular(0.0),
        topEnd: Radius.circular(32.0),
        topStart: Radius.circular(32.0),
      ),
    );
  }
}
