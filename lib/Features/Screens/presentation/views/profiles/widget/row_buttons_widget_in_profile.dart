import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/routers/app_router.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class RowButtonsWidgetInProfile extends StatelessWidget {
  const RowButtonsWidgetInProfile({
    super.key,
    this.onTap,
    this.itemIndex = 0,
  });
  final void Function()? onTap;

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap ??
            () {
              GoRouter.of(context).push(
                AppRouter.kScreensInItemsBodyView,
                extra: '${listText[itemIndex]} Screen',
              );
            },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SizedBox(
            height: 50,
            width: kWidth(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  listIcons[itemIndex],
                  color: listColor[itemIndex],
                  size: kWidth(context) <= 380 ? 25 : 30.0,
                ),
                const SizedBox(width: 24),
                Text(
                  listText[itemIndex],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyles.kTextWidthInRowButtons(
                    context,
                    listColor: listColor,
                    itemIndex: itemIndex,
                  ),
                ),
                const Spacer(),
                Transform.flip(
                  flipX: true,
                  child: Image(
                      color: itemIndex == 6
                          ? listColor[6]
                          : AppColor.itemSelectedInHomeBottomNavBar,
                      height: kWidth(context) <= 380 ? 30 : 40,
                      width: kWidth(context) <= 380 ? 30 : 40,
                      image: const AssetImage(
                        AssetsImages.backIcon,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const listColor = [
  AppColor.orangeColor,
  AppColor.errorBorderAndRemoveAndIcons,
  AppColor.yellowColor,
  AppColor.green3Color,
  AppColor.amberColor,
  AppColor.sky3Color,
  Color(0xFFFF0000),
];
const listText = [
  'Location Address',
  'Wish List',
  'Order History',
  'Cards',
  'About',
  'Edit',
  'Log Out',
];
const listIcons = [
  FontAwesomeIcons.locationDot,
  TablerIcons.basket_heart,
  // FontAwesomeIcons.heartCirclePlus,
  TablerIcons.clipboard_list,

  FontAwesomeIcons.solidCreditCard,
  TablerIcons.info_square_rounded,
  TablerIcons.user_edit,
  TablerIcons.logout,
];
