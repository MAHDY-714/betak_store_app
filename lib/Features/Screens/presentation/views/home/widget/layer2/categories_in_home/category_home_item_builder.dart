import 'dart:developer';

import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class CategoryHomeItemBuilder extends StatelessWidget {
  const CategoryHomeItemBuilder({
    super.key,
    this.index = 0,
    required this.onTap,
    required this.borderColor,
  });
  final int index;
  final Color borderColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    log(index.toString());
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          end: 8.0,
          top: 16.0,
          // bottom: 16.0,
          start: 8,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: kWidth(context) > 340 && kWidth(context) <= 380 ? 70 : 80,
            decoration: BoxDecoration(
              color: const Color(0xFFF2F2F2),
              border: BorderDirectional(
                bottom: BorderSide(
                  color: borderColor,
                  width: 8,
                ),
                top: BorderSide(
                  color: borderColor,
                  width: 2,
                ),
                start: BorderSide(
                  color: borderColor,
                  width: 2,
                ),
                end: BorderSide(
                  color: borderColor,
                  width: 2,
                ),
              ),
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AssetsImages.listCategoriesInHome[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
