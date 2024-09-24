import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/story_item.dart';

import '../../../../../core/utils/styles.dart';

class StoryListView extends StatelessWidget
{
  const StoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15,),
        const Padding(
          padding: EdgeInsets.only(left: 21),
          child: Text("Stories",style: Styles.styleBoldLeagueSpartan21,),
        ),
        const SizedBox(height: 11,),
        SizedBox(
       height: MediaQuery.of(context).size.height*.23,
          child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 21.0 : 0.0,), // Add left padding to the first item
              child: const StoryItem(),
            );
          },scrollDirection: Axis.horizontal,
            itemCount: 5,),
        ),
      ],
    );
  }
}