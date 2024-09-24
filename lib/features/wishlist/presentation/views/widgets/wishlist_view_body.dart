import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/wishlist/presentation/views/widgets/wish_list_list_view.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 44, bottom: 30, left: 20),
            child: Text(
              "Wishlist",
              style: Styles.styleBoldLeagueSpartan28,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: WishListListView()),
        // ), SliverToBoxAdapter(
        //     child:SizedBox(height: 50,))
      ],
    );
  }
}

