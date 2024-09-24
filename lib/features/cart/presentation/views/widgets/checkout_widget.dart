import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

                  Text("Total",style: Styles.styleExtraBoldLeagueSpartan20.copyWith(color: kPrimaryColor),)
                  ,const SizedBox(width: 6,)
                  ,Text(r"$0,00",style: Styles.styleBoldLeagueSpartan18.copyWith(color:const Color(0xff202020)),)
                ],
              ),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),child: Center(child: Text("Checkout",style: Styles.styleRegularInterLight16.copyWith(color: Colors.white),)),
              )
            ],
          ),
        )
    );
  }
}