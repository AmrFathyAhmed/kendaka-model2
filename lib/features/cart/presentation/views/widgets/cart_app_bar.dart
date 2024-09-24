import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
      child: Row(children: [
        const Text(
          "Cart",
          style: Styles.styleBoldLeagueSpartan28,
        ),
        const SizedBox(
          width: 7,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: const Color(0xff36B7FF).withOpacity(.2)),
          child: const Center(
              child: Text(
                "2",
                style: Styles.styleBoldLeagueSpartan18,
              )),
        )
      ]),
    );
  }
}