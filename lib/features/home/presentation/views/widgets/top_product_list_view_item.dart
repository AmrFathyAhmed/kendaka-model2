import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';

class TopProductListViewItem extends StatelessWidget {
  const TopProductListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.5, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(Assets.imagesTopProductText),
          ),
        ),
      ),
    );
  }
}
