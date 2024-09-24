import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/market_place_list_view_item.dart';
import 'package:kendaka_test/features/market_profile/presentation/views/shop_bottom_sheet.dart';

import 'all_market_places.dart';
import 'header_widget.dart';

class MarketPlaceListView extends StatelessWidget {
  const MarketPlaceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(
          title: 'Market Place',
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AllMarketPlaces(),
                ));
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .31,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 16.0 : 0.0,
                ),
                // Add left padding to the first item
                child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,

                          builder: (context) {
                            return const ShopBottomSheet();
                          });
                    },
                    child: const MarketPlaceListViewItem()),
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
