
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/features/to_recieve/presentation/views/widgets/step_circle2.dart';

import 'step_circle.dart';
import 'package:flutter/material.dart';

class StepIndicator2 extends StatelessWidget {
  final int currentStep;

  const StepIndicator2({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 22, end: 22, bottom: 41),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StepCircle2(
            isCompleted: currentStep > 0,
            isActive: currentStep == 0,
            stepNumber: 1, stepLabel: '',

          ),
          Expanded(
            child: Container(
              height: 8,
              decoration: BoxDecoration(
                color: currentStep >= 1
                    ? Colors.white
                    : (currentStep >= 1 ? Colors.white : Colors.transparent),

              ),
            )
          ),

          StepCircle2(
            isCompleted: currentStep > 1,
            stepNumber: 2,
            isActive: currentStep == 1,
            stepLabel: 'Payment',
          ),
          Expanded(
            child: Container(
              height: 8,
              decoration: BoxDecoration(
                color: currentStep >= 2
                    ? Colors.white
                    : (currentStep >= 2 ? Colors.white : Colors.transparent),

              ),

            ),
          ),

          StepCircle2(
            isCompleted: currentStep > 2,
            stepNumber: 3,
            isActive: currentStep == 2,
            stepLabel: 'Summary',
          ),
        ],
      ),
    );
  }
}



class StepIndicator3 extends StatelessWidget {
  final int currentStep;

  const StepIndicator3({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 22, end: 22, bottom: 41),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StepCircle3(
            isCompleted: currentStep > 0,
            isActive: currentStep == 0,
            stepNumber: 1, stepLabel: '',

          ),
          Expanded(
              child: Container(
                height: 4,
                decoration: BoxDecoration(
                  color: currentStep >= 1
                      ? kPrimaryColor
                      : (currentStep >= 1 ? kPrimaryColor : Colors.transparent),

                ),
              )
          ),

          StepCircle3(
            isCompleted: currentStep > 1,
            stepNumber: 2,
            isActive: currentStep == 1,
            stepLabel: 'Payment',
          ),
          Expanded(
            child: Container(
              height: 4,
              decoration: BoxDecoration(
                color: currentStep >= 2
                    ? kPrimaryColor
                    : (currentStep >= 2 ? kPrimaryColor : Colors.transparent),

              ),

            ),
          ),

          StepCircle3(
            isCompleted: currentStep > 2,
            stepNumber: 3,
            isActive: currentStep == 2,
            stepLabel: 'Summary',
          ),
        ],
      ),
    );
  }
}
