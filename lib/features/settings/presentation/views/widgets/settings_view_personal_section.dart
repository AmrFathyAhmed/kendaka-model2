import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/settings/presentation/views/widgets/settings_view_selection.dart';

class SettingsViewPersonalSection extends StatelessWidget {
  const SettingsViewPersonalSection({super.key, this.profileOnPressed, this.shippingAddressOnPressed, this.paymentMethodsOnPressed});

  final void Function()? profileOnPressed;
  final void Function()? shippingAddressOnPressed;
  final void Function()? paymentMethodsOnPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 27,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Personal',
            style: Styles.styleExtraBoldLeagueSpartan20,
          ),
        ),
        const SizedBox(
          height: 33,
        ),
        SettingsViewSelection(title: 'Profile',onPressed: profileOnPressed,),
        const SizedBox(height: 21.5,),
        SettingsViewSelection(title: 'Shipping Address',onPressed: shippingAddressOnPressed,),
        const SizedBox(height: 21.5,),
        SettingsViewSelection(title: 'Payment methods',onPressed: paymentMethodsOnPressed,),
        const SizedBox(height: 43.5,),
      ],
    );
  }
}
