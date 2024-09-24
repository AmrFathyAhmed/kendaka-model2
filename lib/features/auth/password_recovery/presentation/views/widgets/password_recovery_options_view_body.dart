import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/custom_button.dart';
import 'package:kendaka_test/core/widgets/reusable_container.dart';
import 'package:kendaka_test/features/auth/password_recovery/presentation/views/otp_view.dart';
import 'package:kendaka_test/features/auth/password_recovery/presentation/views/widgets/profile_circle_avatar.dart';
import 'package:kendaka_test/features/auth/password_recovery/presentation/views/widgets/recovery_option_button.dart';
import 'package:kendaka_test/generated/assets.dart';
import 'package:kendaka_test/constants.dart';

class PasswordRecoveryOptionsViewBody extends StatefulWidget {
  const PasswordRecoveryOptionsViewBody({super.key});

  @override
  State<PasswordRecoveryOptionsViewBody> createState() =>
      _PasswordRecoveryOptionsViewBodyState();
}

class _PasswordRecoveryOptionsViewBodyState
    extends State<PasswordRecoveryOptionsViewBody> {
  bool isSMSSelected = true;


  @override
  Widget build(BuildContext context) {
    return ReusableContainer(
      backgroundImage: Assets.imagesResetPassordBubble,
        childWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 156,
              ),
              const ProfileCircleAvatar(),
              const SizedBox(
                height: 19,
              ),
              const Text("Password Recovery",
                  style: Styles.styleBoldLeagueSpartan21),
              const SizedBox(
                height: 5,
              ),
              const Text("How you would like to restore your password?",
                  textAlign: TextAlign.center,
                  style: Styles.styleLightInterLight19),
              const SizedBox(
                height: 28,
              ),
              RecoverOptionButton(
                checkIconBackgroundColor: kPrimaryColor,
                text: 'SMS',
                isSelected: isSMSSelected,
                color: const Color(0xFFF69149).withOpacity(.7),
                onTap: () {
                  setState(() {
                    isSMSSelected = true;
                  });
                },
              ),
              const SizedBox(height: 10),
              RecoverOptionButton(
                checkIconBackgroundColor: const Color(0xFF36B7FF),
                text: 'Email',
                isSelected: !isSMSSelected,
                color: const Color(0xFF36B7FF).withOpacity(.7),
                onTap: () {
                  setState(() {
                    isSMSSelected = false;
                  });
                },
              ),
              const Spacer(),
              CustomButton2(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const OtpView()));
                },
                backgroundColor: kPrimaryColor,
                text: 'Next',
                buttonWidth: 335,
                buttonHeight: 61,
                borderRadius: BorderRadius.circular(16),
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 67),
                    child: GestureDetector(
                      onTap: (){},
                      child: const Text('Cancel',style: Styles.styleLightInterLight15,
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
