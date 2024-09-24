import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/history/presentation/views/widgets/review_dialog.dart';
import 'package:kendaka_test/generated/assets.dart';

import '../../../../../core/widgets/user_circle_avatar.dart';

class AddReviewBottomSheet extends StatelessWidget {
  const AddReviewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 23,bottom: 43,),
              child: Text("Review",style: Styles.styleBoldLeagueSpartan22,),
            ),
            const Row(
              children: [
                UserCircleAvatar(userRatedImage: Assets.imagesUserRateInProduct,radius1: 38,radius2: 34,),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Lorem ipsum dolor sit amet consectetur.",style: Styles.styleRegularInterLight12,),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Order #92287157",style: Styles.styleBoldLeagueSpartan14,),
                ],)
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            RatingBarIndicator(
              itemSize: 40,
              rating: 5.0,
              itemBuilder: (context, index) => const Icon(
                Icons.star_border,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 18,),
            TextField(
              maxLines: 3, // Set the max lines to 3
              style: const TextStyle(
                color: Colors.white, // Text color
                fontSize: 16,
              ),
              decoration: InputDecoration(
                hintText: "Your comment",
                hintStyle: Styles.styleMediumLeagueSpartan16,
                fillColor: const Color(0xffF1F4FE), // Background color of the TextField
                filled: true, // Fill the background
                border: InputBorder.none, // No border
                contentPadding: const EdgeInsets.all(12.0), // Padding within the TextField
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // No border on focus
                  borderRadius: BorderRadius.circular(12.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // No border when enabled
                  borderRadius: BorderRadius.circular(12.0),

                ),
              ),
            ),
            const SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context) => const ReviewDialog(),
                );
              },
              child: Container(width:double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: kPrimaryColor),child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Center(child: Text("Say it!",style: Styles.styleLightInterLight16.copyWith(color: Colors.white),)),
              ),),
            )
          ],
        ),
      ),
    );
  }
}
