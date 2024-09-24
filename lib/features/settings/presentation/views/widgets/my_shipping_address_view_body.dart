import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/settings/presentation/views/add_or_edit_shipping_address_view.dart';
import 'package:kendaka_test/features/settings/presentation/views/widgets/ship_address_list_view_item.dart';
import 'package:kendaka_test/generated/assets.dart';

class MyShippingAddressViewBody extends StatelessWidget {
  const MyShippingAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Text(
                'Settings',
                style: Styles.styleBoldLeagueSpartan28,
              ),
            ],
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              'My Shipping Address',
              style: Styles.styleMediumLeagueSpartan16,
            ),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: height - (height * .3),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const ShipAddressListViewItem(
                  address: 'Aswan, aswan 1, aswan stadium ',
                  postCodeAndPhone: '81023, +201066000043',
                );
              },
              itemCount: 2,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Spacer(),
        SizedBox(
          height: 40,
          width: 335,
          child: TextButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AddOrEditShippingAddressView()));
            },
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            iconAlignment: IconAlignment.end,
            icon: SvgPicture.asset(Assets.imagesAddAddressIcon),
            label: Text(
              'add another address\t\t\t\t',
              style:
                  Styles.styleLightInterLight16.copyWith(color: Colors.white),
            ), // Your text here
          ),
        ),
        const SizedBox(
          height: 34,
        )
      ],
    );
  }
}
