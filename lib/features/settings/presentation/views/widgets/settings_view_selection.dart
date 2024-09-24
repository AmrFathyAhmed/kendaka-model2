import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SettingsViewSelection extends StatelessWidget {
  const SettingsViewSelection({
    super.key, required this.title, this.onPressed,
  });
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                title,
                style: Styles.styleRegularInterLight16
                    .copyWith(fontWeight: FontWeight.w600),
              ),

              const Spacer(),
              IconButton(
                  onPressed: onPressed,
                  icon: const Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),


        const Padding(
          padding: EdgeInsets.only(left: 20, right: 40),
          child: Divider(thickness: .75,),
        )
      ],
    );
  }
}
