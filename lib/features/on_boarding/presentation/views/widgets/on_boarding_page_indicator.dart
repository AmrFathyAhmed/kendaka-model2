import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../constants.dart';
import '../../../data/on_boarding_items.dart';

class OnBoardingPageIndicator extends StatelessWidget {
  const OnBoardingPageIndicator({
    super.key,
    required this.pageController,
    required this.controller,
  });

  final PageController pageController;
  final OnBoardingItems controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: controller.items.length,
      effect: const WormEffect(
        activeDotColor: kPrimaryColor,
        dotColor: Color(0xFFF1D7D1),
        dotHeight: 20,
        dotWidth: 20,
        type: WormType.thinUnderground,
      ),
    );
  }
}
