import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:flutter/material.dart';

class CircleLoadingIndicatorWidget extends StatelessWidget {
  const CircleLoadingIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            // color: Color(0xFF2F3038),
            color: const Color(0xFF4B4E5B),
            border: Border.all(
              color: AppColor.sky2Color,
              width: 1.25,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsetsDirectional.all(6),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Transform.flip(
                  flipY: true,
                  child: const CircularProgressIndicator(
                    backgroundColor: AppColor.backgroundLayer2,
                    // color: Color(0x9F08B50E),
                    color: AppColor.sky2Color,
                    strokeWidth: 2,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: CircularProgressIndicator(
                    backgroundColor: AppColor.backgroundLayer2,
                    color: AppColor.sky2Color,
                    strokeWidth: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
