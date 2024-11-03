import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/counter_button_widget.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CountOfUnitsAndRemoveItemWidget extends StatelessWidget {
  const CountOfUnitsAndRemoveItemWidget({
    super.key,
    this.onTapAdd,
    this.onTapMinus,
    this.onTapRemoveItem,
    required this.quantity,
    required this.height,
  });
  final Function()? onTapAdd;
  final Function()? onTapMinus;
  final Function()? onTapRemoveItem;
  final int quantity;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: kWidth(context) * .12,
      padding: const EdgeInsetsDirectional.only(top: 12.0),
      decoration: Decorations.countOfUnitsAndRemoveItemBoxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: onTapRemoveItem,
            child: Icon(
              FontAwesomeIcons.trash,
              color: AppColor.focusederrorBorderAndRemove,
              size: kWidthCondtions(context,
                  valueIsTrue: 17.0, valueIsFalse: 20.0),
            ),
          ),
          const SizedBox(height: 12.0),
          Expanded(
            child: Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 4.0, vertical: 4.0),
              alignment: AlignmentDirectional.center,
              decoration: Decorations.countOfUnitsItemBoxDecoration,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CounterButtonWidget(onTap: onTapAdd),
                  Text(
                    '999',
                    maxLines: 1,
                    style: TextStyles.textStyle10W60.copyWith(
                      fontSize: kWidthCondtions(context,
                          valueIsTrue: 10.0, valueIsFalse: 12.0),
                    ),
                  ),
                  CounterButtonWidget(onTap: onTapMinus, counterIcon: false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
