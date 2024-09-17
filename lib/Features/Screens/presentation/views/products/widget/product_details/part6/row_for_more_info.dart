import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part6/deatils_info.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part6/more_info_button.dart';
import 'package:betak_store_app/core/functions/show_bottom_sheet_function.dart';
import 'package:flutter/material.dart';

class RowForMoreInfo extends StatelessWidget {
  const RowForMoreInfo(
      {super.key,
      this.onTapDetails,
      this.onTapWarranty,
      this.onTapDimentions,
      required this.productResults});
  final void Function()? onTapDetails;
  final void Function()? onTapWarranty;
  final void Function()? onTapDimentions;
  final ProductResults productResults;
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
              productResults: productResults,
              indexItem: 0,
              listLength: productResults.specifications![0].value!.length,
            ),
          ),
        ),
        MoreInfoButton(
          nameButton: 'Certifications',
          onTap: () => showBottomSheetBody(
            context,
            DetailsInfoView(
              productResults: productResults,
              indexItem: 1,
              listLength: productResults.specifications![1].value!.length,
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
              productResults: productResults,
              indexItem: 2,
              listLength: productResults.specifications![2].value!.length,
            ),
          ),
        ),
      ],
    );
  }
}
