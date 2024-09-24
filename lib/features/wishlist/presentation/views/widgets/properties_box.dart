
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class PropertiesBox extends StatelessWidget {
  const PropertiesBox({super.key, this.text, this.height=25, this.width=55});
  final String? text;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff36B7FF).withOpacity(.13)),
        child: Center(
            child: Text(
              text!,
              style: Styles.styleMediumLeagueSpartan14,
            )),
      ),
    );
  }
}
