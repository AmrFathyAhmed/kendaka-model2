import 'package:flutter/material.dart';
import 'package:kendaka_test/features/category/presentation/views/category_view.dart';
import 'package:kendaka_test/features/category/presentation/views/widgets/specific_catigory_list_view.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/categories_grid_view_item.dart';

import 'header_widget.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        HeaderWidget(
          title: "Categories",
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AllCategoryView(),
                ));
          },
        ),
        const SizedBox(
          height: 12,
        ),
        GridView.builder(
          padding: EdgeInsets.symmetric(
              horizontal: (width <= 411 || height <= 960) ? 13 : 20),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0, // Vertical spacing between item
              crossAxisSpacing: 5,
              childAspectRatio: 165 / 210),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SpecificCategoryView(),
                          ));
                    },
                    child: const CategoriesGridViewItem()));
          },
        ),
      ],
    );
  }
}
