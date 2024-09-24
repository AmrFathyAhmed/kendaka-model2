import 'package:flutter/material.dart';
import 'package:kendaka_test/features/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';

import '../../data/on_boarding_items.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final controller = OnBoardingItems();
  final pageController = PageController();

  @override
  void dispose() {
    // Dispose the PageController when the widget is disposed
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody( controller: controller, pageController: pageController),
    );
  }
}

