import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/image_with_shadow_frame.dart';
import '../../../../../generated/assets.dart';

class ToRecieveListViewItem extends StatelessWidget {
  const ToRecieveListViewItem({super.key, this.onTap, this.isDelivered=false});


    final VoidCallback? onTap;
    final bool? isDelivered ;
    @override
    Widget build(BuildContext context) {

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const ImageWithShadowFrame(aspectRatio: 1,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order #92287157",
                            style: Styles.styleBoldLeagueSpartan14.copyWith(
                              fontSize: MediaQuery.of(context).size.width<390?12:14
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color(0xffF9F9F9),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 9,vertical: 4),
                              child: Center(child: Text("3 items",style: Styles.styleMediumLeagueSpartan16,)),
                            ),
                          )
                        ],
                      ),
                    ),

                     const Text(
                      "Standard Delivery",
                      style: Styles.styleMediumLeagueSpartan16,
                    ),
                    const SizedBox(height: 5,),
                    isDelivered!=false?
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Packed",style: Styles.styleBoldLeagueSpartan18,),
                          GestureDetector(
                            onTap: onTap,
                            child: Container(
                              decoration:BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: kPrimaryColor,width: 2)

                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 23),
                                child: Text("Track",style: Styles.styleMediumLeagueSpartan16.copyWith(color: Colors.white),),
                              ),
                            ),
                          )

                        ],
                      ),
                    ): SizedBox(
                      width: MediaQuery.of(context).size.width * .5,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                               Text("Delivered",style: Styles.styleMediumLeagueSpartan18.copyWith(fontSize: MediaQuery.of(context).size.width<390?16:18)),
                              SvgPicture.asset(Assets.imagesCheckDelivered)
                            ],
                          ),
                          GestureDetector(
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
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
