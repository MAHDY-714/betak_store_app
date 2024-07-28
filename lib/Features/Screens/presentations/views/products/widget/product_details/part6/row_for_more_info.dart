import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part6/deatils_info.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/products/widget/product_details/part6/more_info_button.dart';
import 'package:betak_store_app/core/functions/show_bottom_sheet_function.dart';
import 'package:betak_store_app/core/utils/more_info_list.dart';
import 'package:flutter/material.dart';

class RowForMoreInfo extends StatelessWidget {
  const RowForMoreInfo(
      {super.key, this.onTapDetails, this.onTapWarranty, this.onTapDimentions});
  final void Function()? onTapDetails;
  final void Function()? onTapWarranty;
  final void Function()? onTapDimentions;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MoreInfoButton(
          nameButton: 'Details',
          startBorder: .01,
          topStartBorderRadius: 0,
          bottomStartBorderRadius: 0,
          onTap: () => showBottomSheetBody(
            context,
            DetailsInfoView(
              moreInfo: specifications,
              indexItem: 0,
              listLength: detailsList.length,
            ),
          ),
        ),
        MoreInfoButton(
          nameButton: 'Warranty',
          onTap: () => showBottomSheetBody(
            context,
            DetailsInfoView(
              moreInfo: specifications,
              indexItem: 1,
              listLength: warrantyList.length,
            ),
          ),
        ),
        MoreInfoButton(
          nameButton: 'Dimentions',
          endBorder: 0.1,
          topEndBorderRadius: 0,
          bottomEndBorderRadius: 0,
          onTap: () => showBottomSheetBody(
            context,
            DetailsInfoView(
              moreInfo: specifications,
              indexItem: 2,
              listLength: dimensionsList.length,
            ),
          ),
        ),
      ],
    );
  }
}
