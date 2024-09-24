import 'package:flutter/material.dart';
import 'package:kendaka_test/features/to_recieve/presentation/views/widgets/custom_steper_back_ground.dart';
import 'package:kendaka_test/features/to_recieve/presentation/views/widgets/step_indicator.dart';
import 'package:kendaka_test/features/to_recieve/presentation/views/widgets/step_indicator2.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomStepperBackGround(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6),
          child: Stack(children: [
            StepIndicator2(
              currentStep: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
              child: StepIndicator3(currentStep: 1),
            )
          ]),
        )
      ],
    );
  }
}
