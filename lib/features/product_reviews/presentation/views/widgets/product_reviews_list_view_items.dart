import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/generated/assets.dart';

class ProductReviewsListViewItems extends StatelessWidget {
  const ProductReviewsListViewItems({
    super.key,
    required this.name,
    required this.comment,
    required this.rate,
  });

  final String name;
  final String comment;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 25,
                child: Image.asset(Assets.imagesUserRateInProduct),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
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
                  comment,
                  maxLines: 5,
                  style:
                  Styles.styleRegularLeagueSpartan12.copyWith(height: 1.5),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
