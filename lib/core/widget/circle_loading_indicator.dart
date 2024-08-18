import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:flutter/material.dart';

class CircleLoadingIndicatorWidget extends StatelessWidget {
  const CircleLoadingIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          // color: Color(0xFF2F3038),
          color: AppColor.skyColor,
          border: Border.all(
            color: AppColor.blueDarkColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsetsDirectional.all(8),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Transform.flip(
                flipY: false,
                child: const CircularProgressIndicator(
                  backgroundColor: AppColor.backgroundLayer2,
                  color: AppColor.green3Color,
                  strokeWidth: 7,
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Transform.flip(
                flipY: true,
                child: const CircularProgressIndicator(
                  backgroundColor: AppColor.backgroundLayer2,
                  // color: Color(0x9F08B50E),
                  color: AppColor.green2Color,
                  strokeWidth: 7,
                ),
              ),
            ),
            const Center(
              child: CircularProgressIndicator(
                backgroundColor: AppColor.backgroundLayer2,
                color: AppColor.green3Color,
                strokeWidth: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
