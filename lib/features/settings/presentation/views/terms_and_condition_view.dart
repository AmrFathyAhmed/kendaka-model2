import 'package:flutter/material.dart';
import 'package:kendaka_test/features/settings/presentation/views/widgets/terms_and_condition_view_body.dart';

class TermsAndConditionView extends StatelessWidget {
  const TermsAndConditionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: TermsAndConditionViewBody(),
    );
  }
}
