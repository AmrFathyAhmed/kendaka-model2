import 'package:flutter/material.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';

class Variations extends StatelessWidget {
  const Variations({
    super.key,
    required this.color,
    required this.size,
    this.onTap,
  });

  final String color;
  final String size;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
      child: Row(
        children: [
          const Text(
            'Variations',
            style: Styles.styleExtraBoldLeagueSpartan20,
          ),
          const SizedBox(
            width: 9,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.05),
                borderRadius: BorderRadius.circular(4)),
            width: 54,
            height: 25,
            child: Center(
                child: Text(
              color,
              style: Styles.styleMediumLeagueSpartan14,
            )),
          ),
          const SizedBox(
            width: 6,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.05),
                borderRadius: BorderRadius.circular(4)),
            width: 54,
            height: 25,
            child: Center(
                child: Text(
              size,
              style: Styles.styleMediumLeagueSpartan14,
            )),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: const SizedBox(
              height: 30,
              width: 30,
              child: CircleAvatar(
                backgroundColor: kPrimaryColor,
                radius: 15,
                child: Center(
                    child: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                  size: 17,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
