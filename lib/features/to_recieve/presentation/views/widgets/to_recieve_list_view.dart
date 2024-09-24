import 'package:flutter/material.dart';
import 'package:kendaka_test/features/to_recieve/presentation/views/widgets/to_recieve_list_view_item.dart';


class ToReceiveListView extends StatelessWidget {
  const ToReceiveListView({super.key, this.numOfItem, this.onTap});
  final int? numOfItem;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26.0),
      child: ListView.builder(

        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => ToRecieveListViewItem(isDelivered: index>1?false:true,onTap: onTap,),
        itemCount: numOfItem,

      ),
    );
  }
}
