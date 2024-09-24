
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Shipping Address",
                        style: Styles.styleBoldLeagueSpartan14,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "26, Duong So 2, Thao Dien Ward, An Phu, District 2, Ho Chi Minh city",
                        style: Styles.styleRegularInterLight15
                            .copyWith(fontSize: 10),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit,color: Colors.white,size: 20,),
                    constraints: const BoxConstraints(), // Remove default constraints
                    padding: EdgeInsets.zero,

                  ),
                )
              ]),
        ),
      ),
    );
  }
}
