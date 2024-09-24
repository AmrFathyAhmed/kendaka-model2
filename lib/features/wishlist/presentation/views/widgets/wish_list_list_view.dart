import 'package:flutter/material.dart';
import 'package:kendaka_test/features/wishlist/presentation/views/widgets/wish_list_list_view_item.dart';

class WishListListView extends StatelessWidget {
  const WishListListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const WishListListViewItem(),
      itemCount: 10,
    );
  }
}
