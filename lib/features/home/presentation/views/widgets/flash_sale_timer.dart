
import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import 'flash_sale_counter_box.dart';

class FlashSaleTimer extends StatelessWidget {
  const FlashSaleTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesClock,),
        const SizedBox(width: 10,),
        const CounterBox(
          text: '00',
        ),
        const CounterBox(
          text: '36',
        ),
        const CounterBox(
          text: '27',
        ),
      ],
    );
  }
}