import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void customSnackBar(context, String text, ToastState state) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      padding: const EdgeInsetsDirectional.all(20),
      duration: const Duration(seconds: 4),
      showCloseIcon: true,
      closeIconColor: Colors.white70,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      content: Container(
        padding: const EdgeInsets.all(12),
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            color: colorToastState(state),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.white54,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconsInToastState(state),
              color: Colors.white70,
              size: 35,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.descriptionOnboardingStyle,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

enum ToastState { success, warning, error }

Color colorToastState(ToastState state) {
  Color color;
  switch (state) {
    case ToastState.success:
      color = const Color(0xFF006604);
      break;
    case ToastState.error:
      color = const Color(0xFF6E0B0B);
      break;
    case ToastState.warning:
      color = const Color(0xFFFF6600);
      break;
  }
  return color;
}

IconData iconsInToastState(ToastState state) {
  IconData icon;
  switch (state) {
    case ToastState.success:
      icon = TablerIcons.check;
      break;
    case ToastState.error:
      icon = TablerIcons.exclamation_circle;
      break;
    case ToastState.warning:
      icon = FontAwesomeIcons.triangleExclamation;
      break;
  }
  return icon;
}

/* 
success green( Color(0xFF006604) ) 
  - & icon check or progress-check tabler icons 

error red ( Color(0xFF901313) or Color(0xFFB90000) ) 
  - & icon close or exclamation-circle tabler icons
  - & circle-exclamation fontAowsomeIcons 

warning orange ( Color(0xFFFF6600) ) or yellow 
  - & icon triangle-exclamation
*/
