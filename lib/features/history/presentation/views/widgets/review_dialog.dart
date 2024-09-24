import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class ReviewDialog extends StatelessWidget {
  const ReviewDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding:const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),

      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 60.0,
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            margin: const EdgeInsets.only(top: 45.0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                    'Done!',
                    style: Styles.styleBoldLeagueSpartan19
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Thank you for your review',
                  style: Styles.styleSemiBoldInterLight14,),
                const SizedBox(height: 13.0),
                RatingBarIndicator(
                  itemSize: 50,
                  rating: 5.0,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star_border,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(height: 30.0),
                ElevatedButton(

                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 12.0,
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Go Back',
                        style: Styles.styleRegularInterLight16.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45.0,
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 45.0,
                  child:SvgPicture.asset(Assets.imagesDialogCheckIcon,fit: BoxFit.fill,)
              ),
            ),
          ),
        ],
      ),
    );
  }
}