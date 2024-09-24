import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/user_circle_avatar.dart';
import 'package:kendaka_test/features/on_boarding/data/on_boarding_items.dart';
import 'package:kendaka_test/features/on_boarding/presentation/views/widgets/on_boarding_page_indicator.dart';
import 'package:kendaka_test/features/on_boarding/presentation/views/widgets/on_boarding_page_view_card.dart';
import 'package:kendaka_test/generated/assets.dart';

class StoryViewBody extends StatefulWidget {
   const StoryViewBody({super.key});

  @override
  State<StoryViewBody> createState() => _StoryViewBodyState();
}

class _StoryViewBodyState extends State<StoryViewBody> {
  final controller = OnBoardingItems();

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 32),
            child: Row(
              children: [
                const UserCircleAvatar(
                    userRatedImage: Assets.imagesUserRateInProduct),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'H&M',
                      style: Styles.styleBoldLeagueSpartan13,
                    ),
                    Text(
                      'uploaded from 22 hours',
                      style: Styles.styleRegularLeagueSpartan12
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.xmark,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          const SizedBox(height: 12,),
          SizedBox(
            height: (2.3 / 3) * height,
            child: PageView.builder(
                itemCount: controller.items.length,
                controller: pageController,
                itemBuilder: (context, index) {
                  return OnBoardingPageViewCard(
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const WelcomeView()));
                    },
                    controller: controller,
                    index: index,
                  );
                }),
          ),
          OnBoardingPageIndicator(
              pageController: pageController, controller: controller),
        ],
      ),
    );
  }
}
