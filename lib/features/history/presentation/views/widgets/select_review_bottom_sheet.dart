import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';

import 'add_review_bottom_sheet.dart';
import 'history_list_view.dart';

class SelectReviewBottomSheet extends StatelessWidget {
  const SelectReviewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      color: Colors.white,
    ),


      child: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Which item you want to review?",style: Styles.styleBoldLeagueSpartan18,),
          )
          ,const SizedBox(
            height: 45,
          ),
          HistoryListView(numOfItem:2,onTap: (){
            showModalBottomSheet(
                context: context,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,),
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return const AddReviewBottomSheet();});
          },)
        ],
      ),
    );
  }
}
