import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class FlashSaleGridItem extends StatelessWidget {
  const FlashSaleGridItem({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 109/114,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.topRight,
                  children: [
                    Center(
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Assets.imagesGridViewItemTest),
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight),
                        ),
                      ),
                    ),
                    Container(
                      height: 18,
                      width: 39,
                      decoration: BoxDecoration(
                        color: const Color(0xff36B7FF).withOpacity(.75),
                        borderRadius:
                            const BorderRadius.only(bottomLeft: Radius.circular(6)),
                      ),
                      child: const Center(
                        child: Text(
                          "-20%",
                          style: Styles.styleBoldLeagueSpartan12,
                        ),
                      ),
                    )
                  ])),
        ),
      ),
    );
  }
}
