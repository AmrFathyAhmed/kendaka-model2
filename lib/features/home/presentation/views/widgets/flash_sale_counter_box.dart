import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CounterBox extends StatelessWidget {
  const CounterBox({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: 27,
        width: 30,
        decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(.2),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text!,
            style: Styles.styleBoldLeagueSpartan17,
          ),
        ),
      ),
    );
  }
}