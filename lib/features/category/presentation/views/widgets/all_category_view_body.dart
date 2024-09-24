import 'package:flutter/material.dart';
import 'package:kendaka_test/features/category/presentation/views/widgets/all_category_header.dart';
import 'category_drop_down_list_view.dart';
import 'category_tap_bar.dart';
import 'just_for_you_widget.dart';

class AllCategoryViewBody extends StatelessWidget
{
  const AllCategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        const AllCategoryHeader(),
        HorizontalCategoriesView(onCategorySelected: (Category ) {  },),
        const CategoryDropDownListView(),
        const JustForYouWidget()
      ],
    );
  }
}
