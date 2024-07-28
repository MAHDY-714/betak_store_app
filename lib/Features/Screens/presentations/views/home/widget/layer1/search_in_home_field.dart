import 'package:betak_store_app/core/styles/text_styles.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:flutter/material.dart';

class SearchInHomeField extends StatelessWidget {
  const SearchInHomeField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: kWidth(context),
        padding: const EdgeInsetsDirectional.only(start: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFFFFFFF),
            width: 2,
          ),
          color: Colors.white70,
        ),
        child: const Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.black26,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Search Your Furniture Home',
              style: TextStyles.searchInHome,
            ),
          ],
        ),
      ),
    );
  }
}
