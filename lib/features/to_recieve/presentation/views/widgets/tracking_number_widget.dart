import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class TrackingNumberWidget extends StatelessWidget {
const TrackingNumberWidget({super.key});

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tracking Number",
                  style: Styles.styleBoldLeagueSpartan14,
                ),
                Text(
                  "LGS-i92927839300763731",
                  style: Styles.styleRegularInterLight12,
                ),
              ],
            ),
            SvgPicture.asset(Assets.imagesReceiptIcon),
          ],
        ),
      ),
    ),
  );
}
}
