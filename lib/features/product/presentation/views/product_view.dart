import 'package:flutter/material.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductViewBody(),
    );
  }
}
