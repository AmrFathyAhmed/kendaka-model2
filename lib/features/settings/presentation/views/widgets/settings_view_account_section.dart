import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/settings/presentation/views/widgets/settings_view_selection.dart';

class SettingsViewAccountSection extends StatelessWidget {
  const SettingsViewAccountSection({super.key, this.languageOnPressed, this.aboutKendakaOnPressed, this.termsAndConditionsOnPressed, required this.selectedLanguage});
  final void Function()? languageOnPressed;
  final void Function()? aboutKendakaOnPressed;
  final void Function()? termsAndConditionsOnPressed;
  final String selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Account',
            style: Styles.styleExtraBoldLeagueSpartan20,
          ),
        ),
        const SizedBox(
          height: 33,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Language',
                    style: Styles.styleRegularInterLight16
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Text(
                    selectedLanguage,
                    style: Styles.styleRegularInterLight15
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 16,),
                  IconButton(
                      onPressed: languageOnPressed,
                      icon: const Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 40),
              child: Divider(thickness: .9,),
            )
          ],
        ),
        const SizedBox(height: 21.5,),
        SettingsViewSelection(title: 'About Kendaka',onPressed: aboutKendakaOnPressed,),
        const SizedBox(height: 21.5,),
        SettingsViewSelection(title: 'Terms and Conditions',onPressed: termsAndConditionsOnPressed,),
        const SizedBox(height: 42.5,),
      ],
    );
  }
}
