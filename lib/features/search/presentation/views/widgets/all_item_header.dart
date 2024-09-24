import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class TitleWithFilterIcon extends StatelessWidget {
  const TitleWithFilterIcon({super.key, this.title, this.subTitle, this.isSubtitleVisible=false});
  final String? title;
  final String? subTitle;
  final bool? isSubtitleVisible;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,top: 25,bottom: 15,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            children: [
              Text(title!,style: Styles.styleBoldLeagueSpartan21,),
             isSubtitleVisible==true? Text(". $subTitle",style: Styles.styleBoldLeagueSpartan21.copyWith(fontWeight: FontWeight.w500),):const SizedBox()
            ],
          ),
          Image.asset(Assets.imagesFilterIcon),

        ],
      ),
    );
  }
}