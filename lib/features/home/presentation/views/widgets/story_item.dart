import 'package:flutter/material.dart';
import 'package:kendaka_test/generated/assets.dart';

class StoryItem extends StatelessWidget
{
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*.23,
        child: Column(
          children: [
            Stack
              (
              fit: StackFit.loose,
              alignment: Alignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: const AssetImage(Assets.imagesStoryTest),
                      fit: BoxFit.cover,  height: MediaQuery.of(context).size.height*.23-10,)),
                const Image(image: AssetImage("Assets/images/playButton.png"),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
