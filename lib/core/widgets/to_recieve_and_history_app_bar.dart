import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import '../utils/styles.dart';

class ToReceiveAndHistoryAppBar extends StatelessWidget {
  const ToReceiveAndHistoryAppBar({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return    SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_rounded)),
            const SizedBox(
              width: 5,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset(Assets.imagesUserRateInProduct),
                ),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              children: [
                Text(
                  title!,
                  style: Styles.styleBoldLeagueSpartan21,
                ),
                const Text(
                  'My Orders',
                  style: Styles.styleMediumLeagueSpartan14,
                ),
              ],
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.imagesSettingsIcon))
          ],
        ),
      ),
    );
  }
}
