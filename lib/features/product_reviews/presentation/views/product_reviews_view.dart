import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/product_reviews/presentation/views/widgets/product_reviews_view_body.dart';

class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_sharp),onPressed: (){Navigator.pop(context);},),
        title: const Text(
          'Reviews',
          style: Styles.styleBoldLeagueSpartan28,
        ),
        titleSpacing: -6.5,
      ),
      body: const ProductReviewsViewBody(),
    );
  }
}
