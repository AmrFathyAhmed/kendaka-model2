import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/see_all_button.dart';

import '../../../../../core/utils/styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.title, this.onTap, });
  final String title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: Styles.styleBoldLeagueSpartan21,),
          SeeAllButton(text: "See All",onTap: onTap,)
        ],
      ),
    );
  }
}
