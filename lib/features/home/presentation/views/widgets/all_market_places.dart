import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/all_market_place_list_view_item.dart';
import 'package:kendaka_test/features/search/presentation/views/search_view.dart';

import 'custom_page_view.dart';
import 'home_app_bar.dart';

class AllMarketPlaces extends StatelessWidget {
  const AllMarketPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 54,
                ),
                HomeAppBar(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchView(),
                        ));
                  },
                ),
                const CustomPageView(),
              ],
            ),
          ),
          const AllMarketPlaceListView(),
          const SliverToBoxAdapter(child: SizedBox(height: 20,))
        ],
      ),
    );
  }
}

class AllMarketPlaceListView extends StatelessWidget {
  const AllMarketPlaceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(

      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.0, vertical: 5),
          child: AllMarketPlaceListViewItem(),
        );
      },
      itemCount: 5,
    );
  }
}
