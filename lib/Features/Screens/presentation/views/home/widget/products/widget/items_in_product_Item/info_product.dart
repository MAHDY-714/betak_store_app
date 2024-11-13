import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class InfoProduct extends StatelessWidget {
  const InfoProduct({
    super.key,
    required this.productModel,
  });
  final ProductModel? productModel;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-.85, 1.18),
      child: Container(
        height:
            kHeightCondtions(context, valueIsTrue: 120.0, valueIsFalse: 135.0),
        width: kWidth(context),
        alignment: AlignmentDirectional.centerStart,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: const Color(0xFF507EFF).withOpacity(.04),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productModel!.title.toString(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.nameProductStyleInInLayer2.copyWith(
                  fontSize: kHeightCondtions(context,
                      valueIsTrue: 10.0, valueIsFalse: 12.5)),
            ),
            if (productModel!.rating != null || productModel!.reviews != null)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        '${productModel!.reviews ?? 0}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.textStyle12.copyWith(
                          color: const Color(0xFA000000),
                          fontSize: kHeightCondtions(context,
                              valueIsTrue: 11.0, valueIsFalse: 14.0),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Image(
                          height: 13,
                          width: 13,
                          color: Color(0xFA000000),
                          image: AssetImage(
                            AssetsImages.profileIcon,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${productModel!.rating?.toStringAsFixed(2) ?? 0.00}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.priceStyleInInLayer2.copyWith(
                          color: AppColor.blueDarkColor,
                          // height: 1.5,
                          fontSize: kHeightCondtions(context,
                              valueIsTrue: 10.0, valueIsFalse: 13.0),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      const Image(
                          height: 15,
                          width: 15,
                          image: AssetImage(
                            AssetsImages.starIcon,
                          )),
                    ],
                  ),
                ],
              ),
            if (productModel?.price != null)
              Row(
                children: [
                  Text(
                    '${productModel!.price!.round()}\$',
                    // '99999',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.priceStyleInInLayer2.copyWith(
                      fontSize:
                          kHeight(context) >= 770 && kHeight(context) <= 810
                              ? 12
                              : 16,
                    ),
                  ),
                  if (productModel?.priceWas != null) const SizedBox(width: 4),
                  if (productModel?.priceWas != null)
                    Text(
                      '${productModel!.priceWas!.round()}\$',
                      // '99999',
                      style: TextStyles.priceTextStyle9.copyWith(
                          color: AppColor.errorBorderAndRemoveAndIcons,
                          fontSize:
                              kHeight(context) >= 770 && kHeight(context) <= 810
                                  ? 6
                                  : 9),
                    ),
                ],
              )
            else
              Text(
                'out of stock!',
                style: TextStyles.textStyle16Error.copyWith(
                    fontSize: kHeightCondtions(context,
                        valueIsTrue: 13.0, valueIsFalse: 16.0)),
              ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
