import 'package:flutter/material.dart';
import 'package:kendaka_test/core/widgets/to_recieve_and_history_app_bar.dart';
import 'package:kendaka_test/features/to_recieve/presentation/views/widgets/to_recieve_list_view.dart';

import 'package:kendaka_test/features/to_recieve/presentation/views/widgets/to_recieve_progress_view.dart';



class ToReceiveViewBody extends StatelessWidget {
  const ToReceiveViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SizedBox(height: 15,),
      const ToReceiveAndHistoryAppBar(
        title: "To Recieve",
      ),
      ToReceiveListView(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ToReceiveProgressView(),));
        },
        numOfItem: 5,
      )
    ]);
  }
}
