import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:kendaka_test/features/search/presentation/views/widgets/all_item_header.dart';
import 'package:kendaka_test/features/search/presentation/views/widgets/search_gird_view.dart';

import 'category_circular_grid_view.dart';

class CategoryViewBody extends StatelessWidget
{
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: ListView(
        children: [
          HomeAppBar(onTap: (){
          },),
          const CategoryCircularGridView(),
          const TitleWithFilterIcon(title: "All Items",),
          const SearchGridView()

        ],
      ),
    );
  }
}


