import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';

class DiscountBadge extends StatelessWidget {
  const DiscountBadge({super.key, required this.discount});

  final String discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 18,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF4BBEFF), Color(0xFF9BDBFF)], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(6),
        topRight: Radius.circular(6),
        bottomLeft: Radius.circular(6),
      ),
      ),
      child:  Center(
        child: Text(
          discount,
          style: Styles.styleSemiBold13.copyWith(fontWeight: FontWeight.w800,fontSize: 10,color: Colors.white),
        ),
      ),
    );
  }
}