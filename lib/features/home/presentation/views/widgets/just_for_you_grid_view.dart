import 'package:flutter/material.dart';
import 'package:kendaka_test/features/product/presentation/views/product_view.dart';

import 'just_for_you_grid_view_item.dart';
import 'just_for_you_text_widget.dart';

class JustForYouGridView extends StatelessWidget {
  const JustForYouGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            child: JustForYouTextWidget()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                childAspectRatio: 155 / 260),
            itemCount: 8,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductView(),
                        ));
                  },
                  child: const JustForYouGridViewItem());
            },
          ),
        ),
      ],
    );
  }
}
