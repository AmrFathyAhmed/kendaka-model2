import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/discount_badge.dart';

class ProductInSalePricingAndDescription extends StatelessWidget {
  const ProductInSalePricingAndDescription({super.key, required this.discount, required this.description, required this.priceAfterDiscount});
  final String discount;
  final String priceAfterDiscount;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 3),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2, right: 6),
                child: Text(
                  priceAfterDiscount,
                  style: Styles.styleBoldLeagueSpartan14.copyWith(
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF36B7FF),
                      decoration: TextDecoration.lineThrough,
                      decorationColor: const Color(0xFF36B7FF),
                      decorationThickness: 2
                  ),
                ),
              ),
              DiscountBadge(
                discount: discount,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            description,
            style: Styles.styleRegularInterLight15,
          ),
        )
      ],
    );
  }
}
