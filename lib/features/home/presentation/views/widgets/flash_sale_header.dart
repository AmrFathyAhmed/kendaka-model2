import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'flash_sale_timer.dart';

class FlashSaleHeader extends StatelessWidget {
  const FlashSaleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 24 ,bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Flash Sale",
            style: Styles.styleBoldLeagueSpartan21,
          ),
          FlashSaleTimer()
        ],
      ),
    );
  }
}