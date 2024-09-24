import 'package:flutter/cupertino.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/flash_sale_grid_view_item.dart';

import '../../../../../core/utils/styles.dart';


class MarketPlaceOffersListView extends StatelessWidget {
  const MarketPlaceOffersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20,right: 20,left: 20),
          child:  Text("Offers",style: Styles.styleBoldLeagueSpartan21,),),
        SizedBox(
          height: MediaQuery.of(context).size.height * .17,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 16.0 : 0.0,
                  ),
                  // Add left padding to the first item
                  child: const FlashSaleGridItem());
            },
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
