import 'package:flutter/material.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';

class DeliveryOption extends StatelessWidget {
  final String label;
  final String duration;
  final String price;

  const DeliveryOption({
    super.key,
    required this.label,
    required this.duration,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                label,
                style: Styles.styleMediumLeagueSpartan16,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 4),
              height: 26,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.blueAccent.withOpacity(.1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                duration,
                style: Styles.styleMedium13.copyWith(color: kPrimaryColor),
              ),
            ),
            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                '\$$price',
                style:Styles.styleBoldLeagueSpartan16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
