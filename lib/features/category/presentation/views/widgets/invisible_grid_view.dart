import 'package:flutter/material.dart';
import 'package:kendaka_test/features/category/presentation/views/widgets/invisible_grid_view_item.dart';


class InvisibleGridView extends StatelessWidget {
  const InvisibleGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 160 / 45,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      itemBuilder: (context, index) => const InvisibleGridViewItem(),
      itemCount: 10,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 20),
    );
  }
}