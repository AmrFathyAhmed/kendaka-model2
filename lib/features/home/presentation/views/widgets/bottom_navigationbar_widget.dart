
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      unselectedItemColor: Colors.black,
      selectedItemColor: kPrimaryColor,
      unselectedLabelStyle:
      Styles.styleBoldLeagueSpartan12.copyWith(fontSize: 11),
      selectedLabelStyle:
      Styles.styleBoldLeagueSpartan12.copyWith(fontSize: 11),
      onTap: onTap,

      items: const [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 14.0),
            child: ImageIcon(AssetImage(Assets.imagesHome)),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 14.0),
              child: ImageIcon(AssetImage(Assets.imagesWishList)),
            ),
            label: 'Wish-list'),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 14.0),
              child: ImageIcon(AssetImage(Assets.imagesCategorypng)),
            ),
            label: 'Catigory'),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 14.0),
              child: ImageIcon(AssetImage(Assets.imagesCart)),
            ), label: 'Cart'),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 14.0),
              child: ImageIcon(AssetImage(Assets.imagesSetting)),
            ),
            label: 'Settings'),
      ],
    );
  }
}
