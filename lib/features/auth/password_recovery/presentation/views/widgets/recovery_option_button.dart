import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';

class RecoverOptionButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Color color;
  final Color checkIconBackgroundColor;
  final VoidCallback onTap;

  const RecoverOptionButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.color,
    required this.onTap,
    required this.checkIconBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 198,
        decoration: BoxDecoration(
          color: color,
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
                  backgroundColor: checkIconBackgroundColor,
                  radius: 12,
                  child: Visibility(

                    visible: isSelected == true, // Only visible when index is 2
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
    );
  }
}
