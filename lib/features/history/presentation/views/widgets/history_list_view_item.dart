import 'package:flutter/material.dart';
import 'package:kendaka_test/constants.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/image_with_shadow_frame.dart';

class HistoryListViewItem extends StatelessWidget {
  const HistoryListViewItem({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ImageWithShadowFrame(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .38,
                    child: const Text(
                      "Lorem ipsum dolor sit amet consectetur.",
                      style: Styles.styleRegularInterLight12,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const Text(
                    "Order #92287157",
                    style: Styles.styleBoldLeagueSpartan14,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .468,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Container(
                           decoration:BoxDecoration(
                             color: const Color(0xffF9F9F9),
                             borderRadius: BorderRadius.circular(8),

                           ),
                           child: const Padding(
                             padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 18),
                             child: Text("April,06",style: Styles.styleMediumLeagueSpartan14,),
                           ),
                         ),
                        MediaQuery.of(context).size.width<370?
                        GestureDetector(
                          onTap: onTap,
                          child: Container(
                            decoration:BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: kPrimaryColor,width: 2)

                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3,horizontal:10),
                              child: Text("Review",style: Styles.styleMediumLeagueSpartan16.copyWith(fontSize: 13).copyWith(color: kPrimaryColor),),
                            ),
                          ),
                        ):GestureDetector(
                          onTap: onTap,
                          child: Container(
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: kPrimaryColor,width: 2)

                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                              child: Text("Review",style: Styles.styleMediumLeagueSpartan16.copyWith(color: kPrimaryColor),),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
