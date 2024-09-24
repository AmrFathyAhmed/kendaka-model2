import 'package:flutter/material.dart';
import 'package:kendaka_test/generated/assets.dart';

class ProfileCircleAvatar extends StatelessWidget {
  const ProfileCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 58,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(Assets.imagesProfile),
      ),
    );
  }
}
