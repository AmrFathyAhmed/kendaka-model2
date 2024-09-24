import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/user_circle_avatar.dart';

class RandomRatingAppearInProductView extends StatelessWidget {
  const RandomRatingAppearInProductView({super.key, required this.name, required this.comment, required this.rate, required this.generalRate, required this.userRatedImage,});
  final String name;
  final String comment;
  final double rate;
  final String generalRate;
  final String userRatedImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 21, bottom: 20.47),
          child: Row(
            children: [
              RatingBarIndicator(
                rating: 4.0,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                itemCount: 5,
                itemSize: 24.0,
                direction: Axis.horizontal,
              ),
              const SizedBox(
                width: 13.97,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                    color: const Color(0xFFFF7439).withOpacity(.2),
                    borderRadius: BorderRadius.circular(4)),
                width: 38,
                height: 20,
                child:  Center(
                    child: Text(
                      generalRate,
                      style: Styles.styleBoldLeagueSpartan14,
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserCircleAvatar(userRatedImage: userRatedImage),
              const SizedBox(width: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        name,
                        style: Styles.styleSemiBoldLeagueSpartan16,
                      ),
                      const SizedBox(height: 4),
                      RatingBarIndicator(
                        rating: rate,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        itemCount: 5,
                        itemSize: 16.0,
                        direction: Axis.horizontal,
                      ),
                      const SizedBox(height: 10),
                      Text(
                          maxLines: 3,
                          style: Styles.styleRegularLeagueSpartan12,
                          overflow: TextOverflow.ellipsis,
                          comment)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

