import 'package:flutter/material.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/custom_button.dart';
import 'package:kendaka_test/core/widgets/reusable_container.dart';
import 'package:kendaka_test/features/auth/password_recovery/presentation/views/reset_password_view.dart';
import 'package:kendaka_test/features/auth/password_recovery/presentation/views/widgets/profile_circle_avatar.dart';
import 'package:kendaka_test/generated/assets.dart';
import 'package:pinput/pinput.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 49.93,
      height: 50.56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFD3EFFF),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return ReusableContainer(
      backgroundImage: Assets.imagesResetPassordBubble,
      childWidget: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 156),
            const ProfileCircleAvatar(),
            const SizedBox(height: 19),
            const Text("Password Recovery", style: Styles.styleBoldLeagueSpartan21),
            const SizedBox(height: 5),
            const Text(
              "Enter 4-digits code we sent you on your phone number",
              textAlign: TextAlign.center,
              style: Styles.styleLightInterLight19,
            ),
            const SizedBox(height: 13),
            Text(
              "+98*******00",
              style: Styles.styleRegularInterLight16.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            Pinput(
              closeKeyboardWhenCompleted: true,
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  border: Border.all(color: const Color(0xFFD3EFFF)),
                ),
              ),
              onCompleted: (pin) => debugPrint(pin),
            ),
            const SizedBox(height: 174), // Added spacing
            CustomButton2(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ResetPasswordView()));
              },
              backgroundColor: kPrimaryColor,
              text: 'Next',
              buttonWidth: 201,
              buttonHeight: 51,
              borderRadius: BorderRadius.circular(16),
            ),

            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(bottom: 44),
              child: GestureDetector(
                onTap: () {
                  // Handle cancel action
                },
                child: const Text(
                  'Cancel',
                  style: Styles.styleLightInterLight15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
