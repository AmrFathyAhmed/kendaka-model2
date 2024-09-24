import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';

class ResetPasswordTextSection extends StatelessWidget {
  const ResetPasswordTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 19,
        ),
        Text("Setup New Password", style: Styles.styleBoldLeagueSpartan28),
        SizedBox(
          height: 5,
        ),
        Text("Please, setup a new password for your account",textAlign: TextAlign.center, style: Styles.styleLightInterLight19),

        SizedBox(
          height: 42,
        ),
      ],
    );
  }
}
