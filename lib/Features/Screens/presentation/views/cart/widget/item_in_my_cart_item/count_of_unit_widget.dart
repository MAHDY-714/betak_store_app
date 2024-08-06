import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/counter_button_widget.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CountOfUnitsAndRemoveItemWidget extends StatelessWidget {
  const CountOfUnitsAndRemoveItemWidget({
    super.key,
    this.onTapAdd,
    this.onTapMinus,
    this.onTapRemoveItem,
    required this.quantity,
  });
  final Function()? onTapAdd;
  final Function()? onTapMinus;
  final Function()? onTapRemoveItem;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Row(
        children: [
          Container(
            height: 40,
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.white24,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CounterButtonWidget(
                  counterIcon: false,
                  onTap: onTapMinus,
                ),
                const SizedBox(width: 8),
                Text('$quantity',
                    maxLines: 1, style: TextStyles.textStyle10W60),
                const SizedBox(width: 8),
                CounterButtonWidget(onTap: onTapAdd),
              ],
            ),
          ),
          const Spacer(),
          // InkWell(
          //   onTap: onTapRemoveItem,
          //   child: const Text('Remove',
          //       style: TextStyle(
          //         color: AppColor.redColorErrorAndRemove,
          //         fontSize: 10,
          //         fontFamily: FontFamily.bitter500,
          //         letterSpacing: 1,
          //       )),
          // ),

          InkWell(
            onTap: onTapRemoveItem,
            child: const Icon(
              FontAwesomeIcons.trash,
              color: AppColor.focusederrorBorderAndRemove,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}
