import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ChoseColorForProduct extends StatelessWidget {
  const ChoseColorForProduct({super.key, this.onTapChoseColor});
  final void Function()? onTapChoseColor;
  @override
  Widget build(BuildContext context) {
    const listColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.cyan,
      Colors.purpleAccent,
    ];
    return Container(
      height: 30,
      width: kWidth(context) * .52,
      padding: const EdgeInsetsDirectional.only(start: 4, top: 2, bottom: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadiusDirectional.circular(20),
      ),
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              kIndexColor = index;
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: listColors[index],
                shape: BoxShape.circle,
                border: Border.all(
                  color:
                      kIndexColor == index ? Colors.white : Colors.transparent,
                  width: 1,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 3),
        itemCount: listColors.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
