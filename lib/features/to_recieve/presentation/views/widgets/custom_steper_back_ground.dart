import 'package:flutter/material.dart';

class CustomStepperBackGround extends StatelessWidget {
  const CustomStepperBackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SizedBox(
        height: 30,  // Fixed height for Stack
        child: Stack(
          children: [
            // Background container
            Center(
              child: Container(
                height: 14,
                decoration: BoxDecoration(
                  color: const Color(0xffE5EBFC),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
            // Circle at the start
            Positioned(
              left: 0,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: const Color(0xffE5EBFC),
              ),
            ),
            // Circle in the middle
            Positioned(
              left: MediaQuery.of(context).size.width / 2 - 15-24,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: const Color(0xffE5EBFC),
              ),
            ),
            // Circle at the end
            Positioned(
              right: 0,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: const Color(0xffE5EBFC),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
