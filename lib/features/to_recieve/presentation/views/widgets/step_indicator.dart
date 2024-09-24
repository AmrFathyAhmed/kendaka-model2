
import 'package:kendaka_test/constants.dart';

import 'step_circle.dart';
import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;

  const StepIndicator({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 22, end: 22, bottom: 41),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StepCircle(
            isCompleted: currentStep > 0,
            isActive: currentStep == 0,
            stepNumber: 1,
            stepLabel: 'Date & Time',
          ),
          Expanded(
            child: Container(
              height: 8,
              decoration: BoxDecoration(
                color: currentStep >= 1
                    ? Colors.white
                    : (currentStep >= 1 ? Colors.white : Colors.transparent),

              ),
              child: Center(  // Center the inner container
                child: Container(
                  height: 4,  // Adjust height if needed
                  decoration: BoxDecoration(
                    color: currentStep >= 1
                        ? kPrimaryColor
                        : (currentStep >= 1 ? kPrimaryColor : Colors.transparent),
                  ),
                ),
              ),
            ),
          ),

          StepCircle(
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
              child: Center(  // Center the inner container
                child: Container(
                  height: 4,  // Adjust height if needed
                  decoration: BoxDecoration(
                    color: currentStep >= 2
                        ? kPrimaryColor
                        : (currentStep >= 2 ? kPrimaryColor : Colors.transparent),
                  ),
                ),
              ),
            ),
          ),

          StepCircle(
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
