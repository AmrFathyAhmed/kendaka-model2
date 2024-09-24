import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/custom_button.dart';
import 'package:kendaka_test/generated/assets.dart';

class ConfirmPrderViewBody extends StatelessWidget {
  const ConfirmPrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                'Confirm Order',
                style: Styles.styleMediumLeagueSpartan16,
              ),
            ),
          ),
          const SizedBox(
            height: 83,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.imagesConfirmOrder)),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton2(
            onPressed: () {},
            backgroundColor: kPrimaryColor,
            text: 'confirm code',
            buttonHeight: 40,
            buttonWidth: 335,
            borderRadius: BorderRadius.circular(9),
            textStyle:
                Styles.styleLightInterLight16.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
