import 'package:flutter/material.dart';

class UserCircleAvatar extends StatelessWidget {
  const UserCircleAvatar({
    super.key,
    required this.userRatedImage, this.radius1, this.radius2,
  });

  final String userRatedImage;
  final double? radius1;
  final double? radius2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: CircleAvatar(
        radius: radius1 ?? 30,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: radius2 ?? 25,
          child: Image.asset(userRatedImage),
        ),
      ),
    );
  }
}
