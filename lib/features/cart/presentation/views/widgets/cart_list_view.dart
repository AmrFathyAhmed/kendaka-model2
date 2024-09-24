import 'package:flutter/material.dart';

import 'cart_list_view_item.dart';

class CartListView extends StatelessWidget {
const CartListView({super.key});

@override
Widget build(BuildContext context) {
  return ListView.builder(
    shrinkWrap: true,
    padding: EdgeInsets.zero,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) => const CartListViewItem(),
    itemCount: 2,
  );
}
}