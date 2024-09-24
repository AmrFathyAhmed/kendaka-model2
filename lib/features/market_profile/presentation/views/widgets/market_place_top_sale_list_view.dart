import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/most_popular_list_view_item.dart';

class MarketPlaceTopSaleListView extends StatelessWidget {
  const MarketPlaceTopSaleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Text(
            "Top Sales",
            style: Styles.styleBoldLeagueSpartan21,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .23,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 16.0 : 0.0,
                  ),
                  // Add left padding to the first item
                  child: const MostPopularListViewItem());
            },
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
