import 'package:betak_store_app/Features/Screens/presentation/views/profiles/widget/image_widget_in_profile.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class RowImageNameAndPhoneWidget extends StatelessWidget {
  const RowImageNameAndPhoneWidget({
    super.key,
    required this.image,
    required this.name,
    required this.phone,
  });
  final String image;
  final String name;
  final int phone;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context) * .3,
      width: kWidth(context),
      alignment: const AlignmentDirectional(1, -.6),
      decoration: const BoxDecoration(
        color: Color(0x65101E38),
        border: BorderDirectional(
            bottom: BorderSide(
          color: AppColor.itemSelectedInHomeBottomNavBar,
          width: 2,
        )),
      ),
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            ImageWidgetInProfile(
              image: image,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: kWidth(context) * .6,
                  height: 60,
                  child: Center(
                    child: Text(
                      name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyles.textStyle15,
                    ),
                  ),
                ),
                SizedBox(
                  width: kWidth(context) * .6,
                  child: Text(
                    '+$phone',
                    textAlign: TextAlign.center,
                    style: TextStyles.hintTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
