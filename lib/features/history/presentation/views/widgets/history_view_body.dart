import 'package:flutter/material.dart';
import 'package:kendaka_test/core/widgets/to_recieve_and_history_app_bar.dart';
import 'package:kendaka_test/features/history/presentation/views/widgets/select_review_bottom_sheet.dart';

import 'history_list_view.dart';

class HistoryViewBody extends StatelessWidget {
  const HistoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 15,),

          const  ToReceiveAndHistoryAppBar(title: "History",),
          HistoryListView(numOfItem: 6,onTap: (){
            showModalBottomSheet(
                context: context,
                constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,),
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return const SelectReviewBottomSheet();});
          },)
        ],
      ),
    );
  }
}
