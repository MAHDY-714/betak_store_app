import 'package:betak_store_app/Features/Screens/data/models/product_details_info_model/product_results.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/products/widget/product_details/part6/data_cell_item.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class DetailsInfoView extends StatelessWidget {
  const DetailsInfoView(
      {super.key,
      required this.productResults,
      required this.indexItem,
      required this.listLength});
  final ProductResults productResults;
  final int indexItem;
  final int listLength;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: kWidth(context),
        height: kHeight(context),
        color: AppColor.backgroundLayer2,
        alignment: AlignmentDirectional.topCenter,
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
        child: CustomScrollView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          slivers: [
            SliverToBoxAdapter(
              child: DataTable(
                clipBehavior: Clip.antiAlias,
                columnSpacing: 0,
                dataRowMinHeight: 50,
                dataRowMaxHeight: 100,
                headingRowHeight: 50,
                headingTextStyle: TextStyles.priceStyleInInLayer2,
                border: TableBorder.all(
                    color: AppColor.backgroundImageCategore,
                    width: .7,
                    borderRadius: BorderRadius.circular(16.0)),
                columns: const <DataColumn>[
                  DataColumn(
                      label: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: Text('data'))),
                  DataColumn(
                      label: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text('value')))
                ],
                rows: List.generate(
                  // growable: false,
                  listLength,
                  (index) {
                    return DataRow(
                      selected: index.isEven ? true : false,
                      color: MaterialStatePropertyAll(
                        index.isEven
                            ? AppColor.backgroundForAllItemsInProductDarkColor
                            : Colors.transparent,
                      ),
                      cells: <DataCell>[
                        dataCell(context, index,
                            text:
                                '${productResults.specifications![indexItem].value![index].name}',
                            textStyle: TextStyles.toggleSign,
                            width: .35),
                        dataCell(context, index,
                            text:
                                '${productResults.specifications![indexItem].value![index].value}',
                            textStyle: TextStyles
                                .textRecommendationsInProductDetailsStyle),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
