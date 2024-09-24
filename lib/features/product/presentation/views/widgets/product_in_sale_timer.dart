import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/generated/assets.dart';

class ProductInSaleTimer extends StatelessWidget {
  const ProductInSaleTimer({
    super.key, required this.hours, required this.minutes, required this.seconds,
  });

  final String hours;
  final String minutes;
  final String seconds;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 23.5),
      child: SizedBox(
          height: 27,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4, right: 10.4),
                child: SvgPicture.asset(
                  Assets.assetsImagesClock,
                  width: 17.1,
                  height: 19.95,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFDBCC),
                    borderRadius: BorderRadius.circular(4)),
                width: 30,
                height: 27,
                child:  Center(
                    child: Text(
                      hours,
                      style: Styles.styleBoldLeagueSpartan17,
                    )),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFDBCC),
                    borderRadius: BorderRadius.circular(4)),
                width: 30,
                height: 27,
                child: Center(
                    child: Text(
                      minutes,
                      style: Styles.styleBoldLeagueSpartan17,
                    )),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFDBCC),
                    borderRadius: BorderRadius.circular(4)),
                width: 30,
                height: 27,
                child: Center(
                    child: Text(
                      seconds,
                      style: Styles.styleBoldLeagueSpartan17,
                    )),
              ),
            ],
          )),
    );
  }
}
