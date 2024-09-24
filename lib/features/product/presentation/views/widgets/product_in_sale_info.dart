import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/cutom_product_page_view.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/product_in_sale_pricing_and_description.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/product_in_sale_timer.dart';
import 'package:kendaka_test/generated/assets.dart';

class ProductInSaleInfo extends StatelessWidget {
  const ProductInSaleInfo(
      {super.key,
      required this.price,
      required this.name,
      required this.description,
      required this.urlImages,
      this.onPressed,
      required this.discount, required this.hours, required this.minutes, required this.seconds, required this.priceAfterDiscount});

  final String price;
  final String name;
  final String description;
  final List<String> urlImages;
  final void Function()? onPressed;
  final String discount;
  final String hours;
  final String minutes;
  final String seconds;
  final String priceAfterDiscount;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: CustomProductPageView(
            urlImages1: urlImages,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Text(
                  '\$$price',
                  style: Styles.styleExtraBoldLeagueSpartan26,
                ),
              ),
              const Spacer(),
              ProductInSaleTimer(hours: hours,minutes: minutes,seconds: seconds,),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(Assets.imagesShare)),
              )
            ],
          ),
        ),
        ProductInSalePricingAndDescription(discount: discount,description: description,priceAfterDiscount: priceAfterDiscount,)
      ],
    );
  }
}

