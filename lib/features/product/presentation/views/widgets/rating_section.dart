import 'package:flutter/material.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/custom_button.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/random_rating_appear_in_product_view.dart';

class RatingSection extends StatelessWidget {
  const RatingSection(
      {super.key,
      required this.onPressed,
      required this.name,
      required this.comment,
      required this.rate,
      required this.generalRate,
      required this.userRatedImage});

  final void Function() onPressed;
  final String name;
  final String comment;
  final double rate;
  final String generalRate;
  final String userRatedImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 30, bottom: 16.94),
          child: Text(
            'Rating & Reviews',
            style: Styles.styleExtraBoldLeagueSpartan20,
          ),
        ),
        RandomRatingAppearInProductView(
          comment: comment,
          rate: rate,
          name: name,
          generalRate: generalRate,
          userRatedImage: userRatedImage,
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomButton2(
            textStyle:
                Styles.styleLightInterLight16.copyWith(color: Colors.white),
            text: 'View All Reviews',
            onPressed: onPressed,
            backgroundColor: kPrimaryColor,
            borderRadius: BorderRadius.circular(11),
            buttonHeight: 40,
            buttonWidth: 335,
          ),
        ),
      ],
    );
  }
}
