import 'dart:developer';

import 'package:betak_store_app/Features/Screens/presentation/views/profiles/widget/row_buttons_widget_in_profile.dart';
import 'package:betak_store_app/Features/Screens/presentation/views/profiles/widget/row_for_image_and_name_and_phone_widget.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/app_router.dart';
import 'package:betak_store_app/core/utils/cache_helper.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

///ProfilesBodyView
class ProfileBodyView extends StatefulWidget {
  const ProfileBodyView({super.key});

  @override
  State<ProfileBodyView> createState() => _ProfileBodyViewState();
}

class _ProfileBodyViewState extends State<ProfileBodyView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context),
      width: kWidth(context),
      color: AppColor.backgroundLayer2,
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // alignment: const AlignmentDirectional(1, 1),
        children: [
          const RowImageNameAndPhoneWidget(
            image: AssetsImages.avatarMan,
            name: 'User Name',
            phone: 201234567890,
          ),
          Align(
            alignment: const AlignmentDirectional(1, .4),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
              child: Container(
                width: kWidth(context),
                height: kHeight(context) * .6,
                decoration: BoxDecoration(
                  color: const Color(0xFF0B0E18),
                  border: Border.all(
                    color: AppColor.itemSelectedInHomeBottomNavBar,
                    width: 2,
                  ),
                  borderRadius: BorderRadiusDirectional.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const RowButtonsWidgetInProfile(itemIndex: 0),
                      const RowButtonsWidgetInProfile(itemIndex: 1),
                      const RowButtonsWidgetInProfile(itemIndex: 2),
                      const RowButtonsWidgetInProfile(itemIndex: 3),
                      const RowButtonsWidgetInProfile(itemIndex: 4),
                      const RowButtonsWidgetInProfile(itemIndex: 5),
                      RowButtonsWidgetInProfile(
                        itemIndex: 6,
                        onTap: () async {
                          log(
                            kWidth(context).toString(),
                          );
                          log(
                            kHeight(context).toString(),
                          );
                          setState(() {
                            CacheHelper.removeData(key: 'uId').then((value) {
                              GoRouter.of(context).pushReplacement(
                                  AppRouter.kLogOutFromProfile);
                            });
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
