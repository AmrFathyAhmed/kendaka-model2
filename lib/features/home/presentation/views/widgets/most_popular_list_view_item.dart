import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class MostPopularListViewItem extends StatelessWidget {
  const MostPopularListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: AspectRatio(
        aspectRatio: 100 / 140,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black54.withOpacity(0.1),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 93 / 103,
                    child: Image.asset(
                      Assets.imagesMostPopularTest,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 3.0, horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "1780",
                          style: Styles.styleBoldLeagueSpartan15,
                        ),
                        Icon(
                          Icons.favorite,
                          color: kPrimaryColor,
                        )
                      ],
                    ),
                    Text(
                      "New",
                      style: Styles.styleMediumLeagueSpartan14,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
