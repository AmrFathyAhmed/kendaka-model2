
import 'package:flutter/material.dart';
import 'package:kendaka_test/features/category/presentation/views/widgets/specific_catigory_list_view.dart';

import '../../../../../core/utils/styles.dart';

class InvisibleGridViewItem extends StatelessWidget {
  const InvisibleGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SpecificCategoryView(),));
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff1C1A1A), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Center(
              child: Text(
                "Dresses",
                style: Styles.styleBoldLeagueSpartan15,
              )),
        ),
      ),
    );
  }
}
