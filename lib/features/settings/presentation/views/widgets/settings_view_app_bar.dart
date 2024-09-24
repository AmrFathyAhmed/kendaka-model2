import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/user_circle_avatar.dart';
import 'package:kendaka_test/generated/assets.dart';

class SettingsViewAppBar extends StatelessWidget {
  const SettingsViewAppBar({super.key, required this.name, this.qrCodeOnPressed});

  final String name;
  final void Function()? qrCodeOnPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              const UserCircleAvatar(
                userRatedImage: Assets.imagesUserRateInProduct,
                radius1: 40,
                radius2: 35,
              ),
              const SizedBox(
                width: 11.9,
              ),
              Text(
                'Hello, $name!',
                style:
                Styles.styleBoldLeagueSpartan22.copyWith(fontSize: 24.12),
              ),
              const Spacer(),
              IconButton(
                  onPressed: qrCodeOnPressed,
                  icon: SvgPicture.asset(
                    Assets.imagesSettingsQrScan,
                    width: 35,
                    height: 35,
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 45.95,
        ),
      ],
    );
  }
}
