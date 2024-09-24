import 'package:flutter/material.dart';
import 'package:kendaka_test/features/product/presentation/views/product_in_sale_view.dart';

import 'flash_sale_grid_view_item.dart';
import 'flash_sale_header.dart';

class FlashSaleGridView extends StatelessWidget {
  const FlashSaleGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FlashSaleHeader(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 6.0,
              crossAxisSpacing: 4.0,
              childAspectRatio: 109 / 114,
            ),
            itemCount: 6,
            // 3 columns * 2 rows = 6 items
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductInSaleView(),
                        ));
                  },
                  child: const FlashSaleGridItem());
            },
          ),
        ),
      ],
    );
  }
}
