import 'package:flutter/material.dart';

import 'category_circular_grid_view_Item.dart';

class CategoryCircularGridView extends StatelessWidget {
  const CategoryCircularGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 8.0,
            childAspectRatio: 60/105
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CategoryCircularGridViewItem();
        },
      ),
    );
  }
}