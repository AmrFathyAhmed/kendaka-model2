import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:kendaka_test/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class CustomProductPageView extends StatefulWidget {
  const CustomProductPageView({super.key, required this.urlImages1});

  final List<String> urlImages1;

  @override
  State<CustomProductPageView> createState() => _CustomProductPageView();
}

class _CustomProductPageView extends State<CustomProductPageView> {
  int activeIndex = 0;
  CarouselSliderController buttonCarouselController = CarouselSliderController();


  @override
  Widget build(BuildContext context) {
    final List<String> urlImages2 = widget.urlImages1;
    Widget buildIndicator() => AnimatedSmoothIndicator(
          onDotClicked: animateToSlide,
          effect: ExpandingDotsEffect(
              dotWidth: 15,
              activeDotColor: kPrimaryColor,
              dotColor: const Color(0xffFF7439).withOpacity(.2)),
          activeIndex: activeIndex,
          count: urlImages2.length,
        );
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          CarouselSlider.builder(
              carouselController: buttonCarouselController,
              itemCount: urlImages2.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages2[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                  viewportFraction: 1,
                  height: 440,
                  autoPlay: true,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index))),
          Padding(
            padding: EdgeInsets.only(top: 410, left: width * .35),
            child: buildIndicator(),
          )
        ],
      ),
    );
  }

  void animateToSlide(int index) => buttonCarouselController.animateToPage(index);
  Widget buildImage(String urlImage1, int index) => Image.asset(
    urlImage1,
    fit: BoxFit.fill,
    width: double.infinity,
  );

}

