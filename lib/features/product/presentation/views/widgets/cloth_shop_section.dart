import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/generated/assets.dart';

class ClothShopSection extends StatelessWidget {
  const ClothShopSection({
    super.key, required this.nameOfShop, required this.onTap,
  });

  final String nameOfShop;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21,top: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:
          [
            SvgPicture.asset(Assets.imagesStore,width: 28,height: 28,),
            const SizedBox(width: 8,),
            Text(nameOfShop,style: Styles.styleExtraBoldLeagueSpartan20.copyWith(color: kPrimaryColor),)
          ],
        ),
      ),
    );
  }
}
