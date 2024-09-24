import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/just_for_you_text_widget.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/see_all_button.dart';
import '../../../../../generated/assets.dart';

class JustForYouWidget extends StatelessWidget {
  const JustForYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54.withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ]),
                child: Padding(
                  padding:
                  const EdgeInsets.only(right: 20, left: 3, top: 3, bottom: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                Assets.imagesCategoriesgrideTest1,
                                fit: BoxFit.fill,
                                width: 44,
                                height: 44,
                              )),
                          const SizedBox(
                            width: 14,
                          ),
                         const JustForYouTextWidget(fontSize: 17,),
                        ],
                      ),
                  const SeeAllButton(text: "",)
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
