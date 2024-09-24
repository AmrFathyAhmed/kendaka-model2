import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_test/features/wishlist/presentation/views/widgets/properties_box.dart';
import 'package:kendaka_test/features/wishlist/presentation/views/widgets/wish_list_image_with_delete_icon.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class WishListListViewItem extends StatelessWidget {
  const WishListListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WishListImageWithDeleteIcon(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Row(
                  children: [
                    Text(
                      r"$17,00",
                      style: Styles.styleMediumLeagueSpartan17.copyWith(
                          color: const Color(0xff36B7FF),
                          decoration: TextDecoration.lineThrough,
                          decorationColor: const Color(0xFF36B7FF),
                          decorationThickness: 2),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Text(
                      r"$12,00",
                      style: Styles.styleBoldLeagueSpartan18,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                const Row(
                  children: [
                    PropertiesBox(
                      text: "Pink",
                    ),
                    PropertiesBox(
                      text: "M",
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              SvgPicture.asset(
                Assets.imagesAddToCart,
                height: 25,
              ),
            ],
          )
        ],
      ),
    );
  }
}
