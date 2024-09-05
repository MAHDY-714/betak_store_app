import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class CategoryHomeItemBuilder extends StatelessWidget {
  const CategoryHomeItemBuilder({
    super.key,
    this.index = 0,
    required this.onTap,
  });
  final int index;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          end: 16.0,
          top: 16.0,
          bottom: 16.0,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: 70,
            decoration: BoxDecoration(
              color: const Color(0xFFF2F2F2),
              border: const BorderDirectional(
                bottom: BorderSide(
                  color: Color(0xFF06526A),
                  width: 5,
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
