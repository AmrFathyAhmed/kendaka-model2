import 'package:flutter/material.dart';

class LogoWithElevation extends StatelessWidget {
  final double size;
  final double elevation;

  const LogoWithElevation({
    super.key,
    required this.size,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: elevation,
              blurRadius: elevation,
            ),
          ],
        ),
        child: ClipOval(
          child: Image(
            image: const AssetImage("Assets/images/logo.png"),
            width: size,
            height: size,
            fit: BoxFit.cover,
          ),
        ));
  }
}
