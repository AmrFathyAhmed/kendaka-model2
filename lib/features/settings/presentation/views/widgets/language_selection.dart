import 'package:flutter/material.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';

class LanguageSelection extends StatelessWidget {
  const LanguageSelection({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isSelected ? const Color(0xFFD5F0FF) : Colors.grey.withOpacity(.1);
    Color checkIconColor = isSelected ? kPrimaryColor : const Color(0xFFFADED3);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 335,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Stack(
            children: [
              Center(
                child: Text(
                  text,
                  style: Styles.styleBoldLeagueSpartan15
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                right: 10,
                top: 5,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: checkIconColor,
                    radius: 12,
                    child: Visibility(
                      visible: isSelected,
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
