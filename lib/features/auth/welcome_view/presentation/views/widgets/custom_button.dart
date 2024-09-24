import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget
{
  const CustomButton({super.key, this.text, this.onTap, });
final String? text ;
final VoidCallback? onTap ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 61,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(18),

              ),
              child: Center(child: Text(text! ,style: Styles.styleLightInterLight22.copyWith(color:const Color(0xffF3F3F3)),)),
            ),
          ),
        ],
      ),
    );
  }
}
