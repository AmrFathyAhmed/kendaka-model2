import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/top_product_list_view_item.dart';
import '../../../../../core/utils/styles.dart';

class CategoryCircularGridViewItem extends StatelessWidget {
  const CategoryCircularGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const TopProductListViewItem(),
        Text("Dresses",style: Styles.styleMediumLeagueSpartan14.copyWith(fontSize: 13),)
      ],
    );
  }
}
