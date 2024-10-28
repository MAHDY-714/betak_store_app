import 'package:betak_store_app/Features/Screens/data/models/specifications_info_model/specifications_info_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part6/specifications_info_button.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RowForSpecificationsInfoWidget extends StatelessWidget {
  const RowForSpecificationsInfoWidget(
      {super.key, required this.productResults});

  final ProductResults productResults;
  @override
  Widget build(BuildContext context) {
    SpecificationsInfoModel specificationsInfoModelCertifications() {
      late SpecificationsInfoModel specificationsInfoModelCertifications;
      if (productResults.specifications!.length >= 2) {
        specificationsInfoModelCertifications = SpecificationsInfoModel(
          productResults: productResults,
          indexItem: 1,
          listLength: productResults.specifications![1].value!.length,
        );
      }
      return specificationsInfoModelCertifications;
    }

    SpecificationsInfoModel specificationsInfoModelDetails() {
      late SpecificationsInfoModel specificationsInfoModelDetails;
      if (productResults.specifications!.isNotEmpty) {
        specificationsInfoModelDetails = SpecificationsInfoModel(
          productResults: productResults,
          indexItem: 0,
          listLength: productResults.specifications![0].value!.length,
        );
      }
      return specificationsInfoModelDetails;
    }

    SpecificationsInfoModel specificationsInfoModelDimentions() {
      late SpecificationsInfoModel specificationsInfoModelDimentions;
      if (productResults.specifications!.length > 2) {
        specificationsInfoModelDimentions = SpecificationsInfoModel(
          productResults: productResults,
          indexItem: 2,
          listLength: productResults.specifications![2].value!.length,
        );
      }
      return specificationsInfoModelDimentions;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (productResults.specifications!.isNotEmpty)
          SpecificationsInfoButton(
            nameButton: 'Certifications',
            startBorder: .01,
            topStartBorderRadius: 0,
            bottomStartBorderRadius: 0,
            width: kWidthCondtions(
              context,
              valueIsTrue: kWidth(context) * .31,
              valueIsFalse: kWidth(context) * .32,
            ),
            onTap: () => GoRouter.of(context).push(
              AppRouter.kSpecificationsTableInfoViewCertifications,
              extra: specificationsInfoModelCertifications(),
            ),
          ),
        if (productResults.specifications!.isNotEmpty)
          SpecificationsInfoButton(
            nameButton: 'Details',
            endBorder: productResults.specifications!.length > 2 ? 1 : 0.01,
            topEndBorderRadius:
                productResults.specifications!.length > 2 ? 8 : 0,
            bottomEndBorderRadius:
                productResults.specifications!.length > 2 ? 8 : 0,
            width: productResults.specifications!.length > 2
                ? kWidthCondtions(
                    context,
                    valueIsTrue: kWidth(context) * .21,
                    valueIsFalse: kWidth(context) * .21,
                  )
                : kWidthCondtions(
                    context,
                    valueIsTrue: kWidth(context) * .31,
                    valueIsFalse: kWidth(context) * .31,
                  ),
            onTap: () => GoRouter.of(context).push(
                AppRouter.kSpecificationsTableInfoViewDetails,
                extra: specificationsInfoModelDetails()),
          ),
        if (productResults.specifications!.length > 2)
          SpecificationsInfoButton(
            nameButton: 'Dimentions',
            endBorder: 0.01,
            topEndBorderRadius: 0,
            bottomEndBorderRadius: 0,
            width: kWidthCondtions(
              context,
              valueIsTrue: kWidth(context) * .31,
              valueIsFalse: kWidth(context) * .32,
            ),
            onTap: () => GoRouter.of(context).push(
              AppRouter.kSpecificationsTableInfoViewDimentions,
              extra: specificationsInfoModelDimentions(),
            ),
          ),
      ],
    );
  }
}
