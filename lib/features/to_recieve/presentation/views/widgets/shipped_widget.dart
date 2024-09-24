
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class ShippedWidget extends StatelessWidget {
  const ShippedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shipped",
                style: Styles.styleBoldLeagueSpartan16
                    .copyWith(color: kPrimaryColor),
              ),
              Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
                  child: Text(
                    "Expected on April,20",
                    style: Styles.styleMediumLeagueSpartan14,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 5,),
          SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.",
                style: Styles.styleRegularInterLight12
                    .copyWith(color: kPrimaryColor),
              ))
        ],
      ),
    );
  }
}
