import 'package:betak_store_app/core/styles/font_family.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowNameAndIconInMainCategory extends StatelessWidget {
  const RowNameAndIconInMainCategory({
    super.key,
    required this.nameCategore,
  });
  final String nameCategore;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          nameCategore,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 25,
            fontFamily: FontFamily.bitter600,
            letterSpacing: 3,
          ),
        ),
        const Opacity(
          opacity: .1,
          child: Icon(
            FontAwesomeIcons.angleRight,
            size: 80,
            color: Colors.white,
            // grade: .5,
          ),
        ),
      ],
    );
  }
}
