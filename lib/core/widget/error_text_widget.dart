import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class ErrorTextWidget extends StatelessWidget {
  const ErrorTextWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: kWidth(context),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColor.redDeepColor.withOpacity(.05),
          border: BorderDirectional(
            bottom: BorderSide(
              color: AppColor.redDeepColor.withOpacity(.5),
              width: 3,
            ),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          errorMessage,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyles.textStyle16Error,
        ),
      ),
    );
  }
}
