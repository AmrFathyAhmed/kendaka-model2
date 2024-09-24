import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/top_product_list_view_item.dart';

import '../../../../../core/utils/styles.dart';

class TopProductListView extends StatelessWidget {
  const TopProductListView({super.key, this.title="Top Products"});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0,left: 20),
          child: Text(title!,style: Styles.styleBoldLeagueSpartan21,),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height*.1,
          child: ListView.builder(itemCount: 15,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 16.0 : 0.0,
                ),
                child: const TopProductListViewItem(),
              );
            },),
        )
      ],
    );
  }
}
