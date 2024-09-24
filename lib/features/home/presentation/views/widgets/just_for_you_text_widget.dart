import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class JustForYouTextWidget extends StatelessWidget {
  const JustForYouTextWidget({super.key, this.fontSize = 21});
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Just For You",
          style: Styles.styleBoldLeagueSpartan21.copyWith(fontSize: fontSize),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
          child: Icon(
            Icons.star,
            color: kPrimaryColor,
            size: 14,
          ),
        )
      ],
    );
  }
}
