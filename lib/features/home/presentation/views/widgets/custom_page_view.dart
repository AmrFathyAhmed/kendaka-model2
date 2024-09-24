import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:kendaka_test/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../generated/assets.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  int activeIndex = 0;
  CarouselSliderController buttonCarouselController = CarouselSliderController();

  final urlImages1 = [
    Assets.imagesBigSaleBanner,
    Assets.imagesBigSaleBanner,
    Assets.imagesBigSaleBanner,
    Assets.imagesBigSaleBanner,
    Assets.imagesBigSaleBanner,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                carouselController: buttonCarouselController,
                itemCount: urlImages1.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages1[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                    viewportFraction: 1,
                    height: 200,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index))),
            const SizedBox(height: 12),
            buildIndicator()
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
            dotWidth: 15,
            activeDotColor: kPrimaryColor,
            dotColor: const Color(0xffFF7439).withOpacity(.2)),
        activeIndex: activeIndex,
        count: urlImages1.length,
      );

  void animateToSlide(int index) => buttonCarouselController.animateToPage(index);
}

Widget buildImage(String urlImage1, int index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AspectRatio(
          aspectRatio: 335 / 130,
          child: Image.asset(urlImage1, fit: BoxFit.fill)),
    );
