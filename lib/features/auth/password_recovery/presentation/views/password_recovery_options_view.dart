import 'package:flutter/material.dart';
import 'package:kendaka_test/features/auth/password_recovery/presentation/views/widgets/password_recovery_options_view_body.dart';

class PasswordRecoveryOptionsView extends StatelessWidget {
  const PasswordRecoveryOptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  PasswordRecoveryOptionsViewBody(),
    );
  }
}
