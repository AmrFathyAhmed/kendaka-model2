import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';

class SpecificationsSection extends StatelessWidget {
  const SpecificationsSection({super.key, required this.detail1, required this.detail2});

  final String detail1;
  final String detail2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 24.7),
          child: Text(
            'Specifications',
            style: Styles.styleExtraBoldLeagueSpartan20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 12),
          child: Text(
            'Material',
            style: Styles.styleBoldLeagueSpartan17.copyWith(fontWeight: FontWeight.w600,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 21,top: 8),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color:  const Color(0xFFFF7439).withOpacity(.2),

                    borderRadius: BorderRadius.circular(4)
                ),
                width: 96,
                height: 25,
                child:  Center(child: Text(detail1,style: Styles.styleMediumLeagueSpartan14)),
              ),
              const SizedBox(width: 6,),
              Container(
                decoration: BoxDecoration(
                    color:  const Color(0xFFFF7439).withOpacity(.2),

                    borderRadius: BorderRadius.circular(4)
                ),
                width: 96,
                height: 25,
                child:  Center(child: Text(detail2,style: Styles.styleMediumLeagueSpartan14)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
