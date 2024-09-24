import 'package:flutter/cupertino.dart';

import 'header_widget.dart';
import 'most_popular_list_view_item.dart';

class MostPopularListView extends StatelessWidget {
  const MostPopularListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderWidget(title: "Most Popular"),
        const SizedBox(height: 15.3,),
        SizedBox(
          height: MediaQuery.of(context).size.height * .23,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 16.0 : 0.0,
                  ),
                  // Add left padding to the first item
                  child: const MostPopularListViewItem());
            },
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
