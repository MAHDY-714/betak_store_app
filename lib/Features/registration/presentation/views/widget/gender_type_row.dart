import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:betak_store_app/core/styles/app_color.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class GenderTypeRow extends StatelessWidget {
  const GenderTypeRow({
    super.key,
    required this.genderType,
    this.onChanged,
    this.onChanged2,
  });
  final bool genderType;
  final Function(bool)? onChanged;
  final Function(int)? onChanged2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding: const EdgeInsetsDirectional.only(
        //     start: 8.0,
        //     end: 8.0,
        //     bottom: 16.0,
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       // Container(
        //       //   height: 50,
        //       //   width: 50,
        //       //   padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
        //       //   decoration: BoxDecoration(
        //       //     border: Border.all(
        //       //       color: AppColor.sky2Color,
        //       //       width: 2,
        //       //     ),
        //       //     shape: BoxShape.circle,
        //       //     image: const DecorationImage(
        //       //       fit: BoxFit.cover,
        //       //       alignment: AlignmentDirectional.topCenter,
        //       //       image: AssetImage(
        //       //         AssetsImages.avatarMan,
        //       //       ),
        //       //     ),
        //       //   ),
        //       // ),
        //       AnimatedToggleSwitch<bool>.rolling(
        //         current: genderType,
        //         values: const [true, false],
        //         active: genderType,
        //         allowUnlistedValues: true,
        //         iconBuilder: (value, foreground) {
        //           return Container(
        //             height: 50,
        //             width: 50,
        //             padding:
        //                 const EdgeInsetsDirectional.symmetric(horizontal: 8),
        //             decoration: BoxDecoration(
        //               border: Border.all(
        //                 color: AppColor.sky2Color,
        //                 width: 2,
        //               ),
        //               shape: BoxShape.circle,
        //               image: DecorationImage(
        //                 fit: BoxFit.cover,
        //                 alignment: AlignmentDirectional.topCenter,
        //                 image: AssetImage(
        //                   genderType
        //                       ? AssetsImages.avatarMan
        //                       : AssetsImages.avatarWoman,
        //                 ),
        //               ),
        //             ),
        //           );
        //         },
        //         animationDuration: const Duration(milliseconds: 300),
        //         style: ToggleStyle(
        //           borderColor: Colors.transparent,
        //           borderRadius: BorderRadius.circular(10.0),
        //           indicatorBorder: Border.all(color: Colors.white, width: 2),
        //           indicatorBorderRadius: BorderRadius.circular(8),
        //           boxShadow: [
        //             const BoxShadow(
        //               color: Colors.black26,
        //               spreadRadius: 1,
        //               blurRadius: 2,
        //               offset: Offset(0, 1.5),
        //             ),
        //           ],
        //         ),
        //         spacing: 8,
        //         onChanged: onChanged,
        //         indicatorAnimationType: AnimationType.onSelected,
        //       ),
        //     ],
        //   ),
        // ),

        Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 8.0,
            end: 8.0,
            bottom: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatedToggleSwitch<int>.rolling(
                current: genderType ? 0 : 1,
                values: const [0, 1],
                onChanged: onChanged2,
                inactiveOpacity: .05,
                spacing: 16,
                iconBuilder: (value, foreground) {
                  // bool typeGender = foreground;
                  // log('this is typeGender = $typeGender');
                  // "value" to slect item
                  // "foreground" to active item
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.sky2Color,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: AlignmentDirectional.topCenter,
                          image: AssetImage(
                            value == 0
                                ? AssetsImages.avatarMan
                                : AssetsImages.avatarWoman,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                clipBehavior: Clip.antiAliasWithSaveLayer,
                style: ToggleStyle(
                  borderColor: AppColor.sky2Color,
                  borderRadius: BorderRadius.circular(32.0),
                  indicatorBorder:
                      Border.all(color: Colors.transparent, width: 1),
                  indicatorBorderRadius: BorderRadius.circular(16),
                  indicatorColor: Colors.transparent,
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//select gender
/*
   return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 8.0,
        end: 8.0,
        bottom: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Gender',
            style: TextStyles.textStyle10,
          ),
          Container(
            height: 30,
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
            decoration: const BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(
                  color: AppColor.sky2Color,
                  width: 2,
                ),
              ),
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(5),
                bottomEnd: Radius.circular(5),
              ),
            ),
            child: const Text('Male'),
          ),
          Container(
            height: 30,
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
            decoration: const BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(
                  color: AppColor.sky2Color,
                  width: 2,
                ),
              ),
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(5),
                bottomEnd: Radius.circular(5),
              ),
            ),
            child: const Text('Female'),
          ),
        ],
      ),
    );
 
 */
