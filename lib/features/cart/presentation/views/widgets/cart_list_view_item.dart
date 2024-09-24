import 'package:flutter/material.dart';
import 'package:kendaka_test/features/wishlist/presentation/views/widgets/wish_list_image_with_delete_icon.dart';

import '../../../../../core/utils/styles.dart';
import 'add_and_minus_widget.dart';

class CartListViewItem extends StatelessWidget {
  const CartListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const WishListImageWithDeleteIcon(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .15,
              child: Row(
                children: [
                  Column(
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
                        "Pink, Size M",
                        style: Styles.styleMediumLeagueSpartan14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r"$17,00",
                            style: Styles.styleBoldLeagueSpartan18.copyWith(
                                fontSize: MediaQuery.of(context).size.width <
                                        400
                                    ? MediaQuery.of(context).size.width * .042
                                    : 18),
                          ),
                          const AddAndMinisWidget()
                        ],
                      ),
                    ],
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
