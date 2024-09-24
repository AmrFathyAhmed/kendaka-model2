import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class StepCircle extends StatelessWidget {
  final bool isActive;
  final String stepLabel;
  final int stepNumber;
  final bool isCompleted;

  const StepCircle({
    super.key,
    required this.isActive,
    required this.stepLabel,
    required this.stepNumber,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 11,
          backgroundColor: isCompleted
              ? Colors.white
              : (isActive ? Colors.white : Colors.transparent),
          child: CircleAvatar(
            radius: 8,
            backgroundColor: isCompleted
                ? kPrimaryColor
                : (isActive ? kPrimaryColor : Colors.transparent),
          ),
        ),
      ],
    );
  }
}
