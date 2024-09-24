import 'package:flutter/material.dart';
import 'package:kendaka_test/features/category/presentation/views/widgets/specific_catigory_view_body.dart';

class SpecificCategoryView extends StatelessWidget {
  const SpecificCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SpecificCategoryViewBody(),
    );
  }
}
