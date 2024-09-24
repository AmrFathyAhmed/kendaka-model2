import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';

class TitledArrowButton extends StatelessWidget
{
  const TitledArrowButton({super.key, this.text, this.onTap});
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text!,style: Styles.styleLightInterLight15,)
        ,const SizedBox(width: 16,)
        ,
        CircleAvatar(
          backgroundColor: kPrimaryColor,
          radius: 15,
          child: IconButton(onPressed: onTap,icon: const Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 15,),),
        )],
    );
  }
}
