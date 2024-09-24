import 'package:flutter/material.dart';
import 'package:kendaka_test/features/category/presentation/views/widgets/all_category_view_body.dart';

class AllCategoryView extends StatelessWidget
{
  const AllCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: AllCategoryViewBody(),
    );
  }
}
