import 'package:betak_store_app/Features/Screens/data/models/my_cart_data_model/my_cart_model.dart';
import 'package:betak_store_app/Features/Screens/presentation/manager/my_cart_manager/my_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_cart_item.dart';

class MyCartListView extends StatelessWidget {
  const MyCartListView({
    super.key,
    required this.myCartModelList,
  });
  final List<MyCartModel> myCartModelList;
  @override
  Widget build(BuildContext context) {
    // var cubi = BlocProvider.of<MyCartCubit>(context);
    return BlocBuilder<MyCartCubit, MyCartState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return MyCartItemBuilder(
                myCartModelList: myCartModelList,
                myCartModel: myCartModelList[index],
                index: index,
              );
            },
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: myCartModelList.length,
          ),
        );
      },
    );
  }
}
