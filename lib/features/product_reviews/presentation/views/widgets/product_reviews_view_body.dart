import 'package:flutter/material.dart';
import 'package:kendaka_test/features/product_reviews/presentation/views/widgets/product_reviews_list_view_items.dart';

class ProductReviewsViewBody extends StatelessWidget {
  const ProductReviewsViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 700,
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return const ProductReviewsListViewItems(
                  name: 'Veronika',
                  comment:
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum',
                  rate: 4.0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

