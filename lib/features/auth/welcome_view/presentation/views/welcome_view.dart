import 'package:flutter/material.dart';
import 'package:kendaka_test/features/auth/welcome_view/presentation/views/widgets/welcome_page_body.dart';

class WelcomeView extends StatelessWidget
{
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeViewBody(),
    );
  }
}
