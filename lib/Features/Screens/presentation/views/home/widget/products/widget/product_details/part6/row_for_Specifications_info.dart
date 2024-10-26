import 'package:betak_store_app/Features/Screens/data/models/specifications_info_model/specifications_info_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part6/specifications_info_button.dart';
import 'package:betak_store_app/core/utils/app_router.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RowForSpecificationsInfoWidget extends StatelessWidget {
  const RowForSpecificationsInfoWidget(
      {super.key, required this.productResults});

  final ProductResults productResults;
  @override
  Widget build(BuildContext context) {
    SpecificationsInfoModel specificationsInfoModelCertifications =
        SpecificationsInfoModel(
      productResults: productResults,
      indexItem: 1,
      listLength: productResults.specifications![1].value!.length,
    );
    SpecificationsInfoModel specificationsInfoModelDetails =
        SpecificationsInfoModel(
      productResults: productResults,
      indexItem: 0,
      listLength: productResults.specifications![0].value!.length,
    );
    SpecificationsInfoModel specificationsInfoModelDimentions =
        SpecificationsInfoModel(
      productResults: productResults,
      indexItem: 2,
      listLength: productResults.specifications![2].value!.length,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
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
            extra: specificationsInfoModelCertifications,
          ),
        ),
        SpecificationsInfoButton(
          nameButton: 'Details',
          width: kWidthCondtions(
            context,
            valueIsTrue: kWidth(context) * .21,
            valueIsFalse: kWidth(context) * .21,
          ),
          onTap: () => GoRouter.of(context).push(
              AppRouter.kSpecificationsTableInfoViewDetails,
              extra: specificationsInfoModelDetails),
        ),
        SpecificationsInfoButton(
          nameButton: 'Dimentions',
          endBorder: 0.1,
          topEndBorderRadius: 0,
          bottomEndBorderRadius: 0,
          width: kWidthCondtions(
            context,
            valueIsTrue: kWidth(context) * .31,
            valueIsFalse: kWidth(context) * .32,
          ),
          onTap: () => GoRouter.of(context).push(
              AppRouter.kSpecificationsTableInfoViewDimentions,
              extra: specificationsInfoModelDimentions),
        ),
      ],
    );
  }
}
