import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/market_place_list_view.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/story_list_view.dart';
import 'package:kendaka_test/features/search/presentation/views/search_view.dart';
import 'categories_grid_view.dart';
import 'custom_page_view.dart';
import 'flash_sale_grid_view.dart';
import 'home_app_bar.dart';
import 'just_for_you_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
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
          const StoryListView(),
          const FlashSaleGridView(),
          const MarketPlaceListView(),
          //  const NewItemListView(),
          //  const MostPopularListView(),
          //CategoriesGridView(),
          const CategoriesGridView(),
          const SizedBox(
            height: 18,
          ),
          const JustForYouGridView(),
          const SizedBox(
            height: 50,
          ),
          // const SliverToBoxAdapter(
          //   child: TopProductListView(),
          // ),
        ],
      ),
    );
  }
}
