import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key, this.text, this.onTap, this.color=Colors.black});

  final String? text;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text!,
          style: Styles.styleBoldLeagueSpartan15.copyWith(color: color),
        ),
        const SizedBox(
          width: 13,
        ),
        CircleAvatar(
          backgroundColor: kPrimaryColor,
          radius: 15,
          child: IconButton(
            onPressed: onTap,
            icon: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
              size: 15,
            ),
          ),
        )
      ],
    );
  }
}
