import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/settings/presentation/views/widgets/language_selection.dart';

class SelectLanguagesViewBody extends StatefulWidget {
  const SelectLanguagesViewBody({super.key});

  @override
  State<SelectLanguagesViewBody> createState() =>
      _SelectLanguagesViewBodyState();
}

class _SelectLanguagesViewBodyState extends State<SelectLanguagesViewBody> {
  bool isSelectedEnglish = true; // Maintain the initial selection state

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 50,bottom: 23),
            child: Text(
              'Language',
              style: Styles.styleMediumLeagueSpartan16,
            ),
          ),
        ),

        LanguageSelection(
          text: 'English',
          isSelected: isSelectedEnglish,
          onTap: () {
            setState(() {
              isSelectedEnglish = true;
            });
          },
        ),
        const SizedBox(
          height: 6,
        ),
        LanguageSelection(
          text: 'Arabic',
          isSelected: !isSelectedEnglish,
          onTap: () {
            setState(() {
              isSelectedEnglish = false;
            });
          },
        ),
      ],
    );
  }
}

