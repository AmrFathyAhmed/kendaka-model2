
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kendaka_test/features/market_profile/presentation/views/shop_bottom_sheet.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class AllMarketPlaceListViewItem extends StatelessWidget {
  const AllMarketPlaceListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffC1C0C0),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                Assets.imagesAllMarketPlaces,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width - 60,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "El Shazly ",
                      style: Styles.styleExtraBoldLeagueSpartan20,
                    ),
                    Row(
                      children: [
                        Text(
                          "4.3",
                          style: Styles.styleBoldLeagueSpartan14,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffF4BF1E),
                          size: 17,
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  "for Clothes & Accessories ",
                  style: Styles.styleMediumLeagueSpartan14
                      .copyWith(color: const Color(0xffC1C0C0)),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: const Color(0xffC1C0C0),
                              width: .75,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6.0, vertical: 3),
                            child: SvgPicture.asset(
                              Assets.imagesLocationIcon,
                              height: 22,
                              width: 22,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: Text(
                              "Qena, Aswan,...",
                              style: Styles.styleMediumLeagueSpartan14
                                  .copyWith(fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                            )),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showBottomSheet(context: context,constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width,minHeight: MediaQuery.of(context).size.height*.5), builder: (context){
                            return const ShopBottomSheet();
                          });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'see market place',
                                  style: Styles.styleMediumLeagueSpartan14
                                      .copyWith(fontSize: 10),
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                SvgPicture.asset(Assets.imagesBlackArrow)
                              ],
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
