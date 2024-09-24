import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:kendaka_test/features/search/presentation/views/widgets/search_gird_view.dart';
import 'all_item_header.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: const [
        HomeAppBar(),
        TitleWithFilterIcon(title: 'All Items',),
        SearchGridView()

      ],
    );
  }
}

