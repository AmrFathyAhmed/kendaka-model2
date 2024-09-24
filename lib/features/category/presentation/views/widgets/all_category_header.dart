import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';

class AllCategoryHeader extends StatelessWidget
{
  const AllCategoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("All Categories",style: Styles.styleBoldLeagueSpartan28,),
          IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.close_outlined))
        ],
      ),
    );
  }
}
