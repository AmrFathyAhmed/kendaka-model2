import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../../../auth/welcome_view/presentation/views/welcome_view.dart';
import '../../../data/on_boarding_items.dart';
import 'on_boarding_page_indicator.dart';
import 'on_boarding_page_view_card.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({
    super.key,
    required this.controller,
    required this.pageController,
  });

  final OnBoardingItems controller;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    // double width = MediaQuery.sizeOf(context).width;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.imagesOnBoardingBubble),
            fit: BoxFit.contain,
            alignment: Alignment.topRight),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 24.5, left: 24.5, top: 81, bottom: 30),
              child: SizedBox(
                height: (2.3 / 3) * height,
                child: PageView.builder(
                    itemCount: controller.items.length,
                    controller: pageController,
                    itemBuilder: (context, index) {
                      return OnBoardingPageViewCard(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const WelcomeView()));
                        },
                        controller: controller,
                        index: index,
                      );
                    }),
              ),
            ),
            OnBoardingPageIndicator(
                pageController: pageController, controller: controller),
          ],
        ),
      ),
    );
  }
}
