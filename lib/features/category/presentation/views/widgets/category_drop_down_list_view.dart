import 'package:flutter/material.dart';

import 'category_drop_down_list_item.dart';

class CategoryDropDownListView extends StatelessWidget
{
  const CategoryDropDownListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: ListView.builder(

        itemCount:5 ,
        shrinkWrap: true,
        itemBuilder: (context, index) => const CategoryDropDownListItem(),),
    );
  }
}
