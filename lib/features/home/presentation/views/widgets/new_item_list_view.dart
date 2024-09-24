import 'package:flutter/material.dart';

import 'header_widget.dart';
import 'new_item_list_view_item.dart';

class NewItemListView extends StatelessWidget {
  const NewItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(
          title: 'New Items',
          onTap: () {},
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .31,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 16.0 : 0.0,
                ),
                // Add left padding to the first item
                child: const NewItemListViewItem(),
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
