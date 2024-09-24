import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/settings/presentation/views/add_or_edit_shipping_address_view.dart';
import 'package:kendaka_test/generated/assets.dart';

class ShipAddressListViewItem extends StatelessWidget {
  const ShipAddressListViewItem({
    super.key, required this.address, required this.postCodeAndPhone,
  });

  final String address;
  final String postCodeAndPhone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: 335,
        height: 55,
        decoration: BoxDecoration(
            color: const Color(0xFFF1F4FE),
            borderRadius: BorderRadius.circular(14)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 17, top: 14, bottom: 15),
              child: SvgPicture.asset(Assets.imagesAddressLogo),
            ),
            const SizedBox(
              width: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address,
                    style: Styles.styleBoldLeagueSpartan14,
                  ),
                  Text(
                    postCodeAndPhone,
                    style: Styles.styleSemiBold10,
                  ),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddOrEditShippingAddressView()));
                },
                icon: const Icon(Icons.arrow_forward_ios)),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
