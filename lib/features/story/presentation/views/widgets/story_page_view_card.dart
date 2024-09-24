import 'package:flutter/material.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/custom_button.dart';
import 'package:kendaka_test/features/story/data/stories_data.dart';

class StoryPageViewCard extends StatelessWidget {
  const StoryPageViewCard({super.key, required this.controller, required this.index, required this.onTap});

  final StoriesData controller;
  final int index;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(30), // Adjust the borderRadius value here
      ),
      shadowColor: const Color(0xFF707070),
      child: Column(
        children: [
          Image.asset(controller.items[index].images[0]),
          const SizedBox(
            height: 46,
          ),
          Text(
            controller.items[index].description,
            style: Styles.styleBoldLeagueSpartan28,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            controller.items[index].description,
            textAlign: TextAlign.center,
            style: Styles.styleLightInterLight19,
          ),
          Visibility(
              visible: index == 2,
              child: const SizedBox(
                height: 30,
              )),
          Visibility(
            visible: index == 2, // Only visible when index is 2
            child: CustomButton1(
                borderRadius: BorderRadius.circular(16),
                buttonHeight: 50,
                buttonWidth: 201,
                backgroundColor: kPrimaryColor,
                text: 'Let\' Start',
                onPressed: onTap),
          ),
        ],
      ),
    );
  }
}
