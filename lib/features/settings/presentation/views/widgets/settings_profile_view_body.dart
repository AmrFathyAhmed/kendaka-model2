import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/custom_button.dart';
import 'package:kendaka_test/core/widgets/user_circle_avatar.dart';
import 'package:kendaka_test/features/settings/presentation/views/widgets/settings_custom_text_field.dart';
import 'package:kendaka_test/generated/assets.dart';

class SettingsProfileViewBody extends StatefulWidget {
  const SettingsProfileViewBody({super.key});

  @override
  State<SettingsProfileViewBody> createState() =>
      _SettingsProfileViewBodyState();
}

class _SettingsProfileViewBodyState extends State<SettingsProfileViewBody> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                'Your Profile',
                style: Styles.styleMediumLeagueSpartan16,
              ),
            ),
          ),
          const SizedBox(
            height: 15.5,
          ),
          Stack(children: [
            const UserCircleAvatar(
              userRatedImage: Assets.imagesUserRateInProduct,
              radius2: 60,
              radius1: 70,
            ),
            Positioned(
              top: -3,
              right: -3,
              child: SvgPicture.asset(Assets.imagesEditPen),
            )
          ]),
          const SizedBox(
            height: 27.5,
          ),
          SettingsCustomTextField(
            hintStyle: Styles.styleMediumLeagueSpartan17.copyWith(color: Colors.black),

            hintText: 'Romina',
            passwordHide: false,
            controller: _usernameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          SettingsCustomTextField(
            hintStyle: Styles.styleMediumLeagueSpartan17.copyWith(color: Colors.black),

            hintText: 'gmail@example.com',
            passwordHide: false,
            controller: _emailController,
          ),
          const SizedBox(
            height: 10,
          ),
          SettingsCustomTextField(
            hintStyle: Styles.styleMediumLeagueSpartan17.copyWith(color: Colors.black),

            hintText: '************',
            controller: _passwordController,
            passwordHide: true,
          ),
          const SizedBox(
            height: 100,
          ),
          CustomButton2(
            onPressed: () {},
            backgroundColor: kPrimaryColor,
            text: 'Save Changes',
            buttonHeight: 40,
            buttonWidth: 335,
            borderRadius: BorderRadius.circular(9),
            textStyle:
            Styles.styleLightInterLight16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 148,)
        ],
      ),
    );
  }
}

