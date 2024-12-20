import 'package:betak_store_app/Features/Screens/data/models/my_cart_data_model/my_cart_model.dart';
import 'package:betak_store_app/Features/Screens/data/models/product_model/product_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/my_cart_manager/my_cart_cubit.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/count_of_unit_and_remove_widget.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/image_in_my_cart_item.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/info_price_and_total_in_my_cart.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/cart/widget/item_in_my_cart_item/text_in_my_cart_item.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/home/widget/products/widget/product_details/part2/color_product_item.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/decorations.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartItemBuilder extends StatelessWidget {
  const MyCartItemBuilder({
    super.key,
    this.myCartModel,
    this.productModel,
    required this.index,
    this.myCartModelList,
  });
  final MyCartModel? myCartModel;
  final List<MyCartModel>? myCartModelList;
  final ProductModel? productModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<MyCartCubit>(context);
    double totalPrice = myCartModel!.price! * myCartModel!.quantity;
    double height = kHeightCondtions(context,
        valueIsTrue: myCartModel!.colorName!.isNotEmpty ? 155.0 : 140.0,
        valueIsFalse: myCartModel!.colorName!.isNotEmpty ? 175.0 : 160.0);
    double heightColorProductItem =
        kHeightCondtions(context, valueIsTrue: 25.0, valueIsFalse: 30.0);

    return Padding(
      padding: const EdgeInsetsDirectional.only(
          top: 4.0, bottom: 4.0, start: 8.0, end: 0.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: CountOfUnitsAndRemoveWidget(
              onTapAdd: () {
                cubi.counterPlusQuantity(myCartModelList!, index);
              },
              onTapMinus: () {
                cubi.counterMinusQuantity(myCartModelList!, index);
              },
              onTapRemoveItem: () =>
                  cubi.removeProductsInMyCart(myCartModel: myCartModel!),
              quantity: myCartModel!.quantity,
              height: height,
              index: index,
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            flex: 6,
            child: Container(
              height: height,
              decoration: Decorations.myCartItemBoxDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageInMyCartItem(height: height, image: myCartModel!.image!),
                  const SizedBox(width: 6.0),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                        vertical: 2.0, horizontal: 2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInMyCartItem(title: myCartModel!.title.toString()),
                        const Spacer(),
                        ColorProductItem(
                            productModel: productModel,
                            height: heightColorProductItem,
                            width: heightColorProductItem,
                            colorForItemInCart: true,
                            colorFoItemInCartSelected: myCartModel!.color!),
                        if (myCartModel!.colorName!.isNotEmpty)
                          const SizedBox(height: 4.0),
                        if (myCartModel!.colorName!.isNotEmpty)
                          TextInMyCartItem(
                              title: myCartModel!.colorName.toString(),
                              color: AppColor.itemUnSelectedInHomeBottomNavBar,
                              fontTrue: 10,
                              fontFalse: 12),
                        const Spacer(),
                        InfoPriceAndTotalInMyCart(
                            title: 'Price: ', price: myCartModel!.price ?? 0.0),
                        InfoPriceAndTotalInMyCart(
                            title: 'Total: ', price: totalPrice, style: false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
