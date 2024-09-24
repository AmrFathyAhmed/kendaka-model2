import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/cutom_product_page_view.dart';
import 'package:kendaka_test/generated/assets.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo(
      {super.key,
      required this.price,
      required this.name,
      required this.description,
      this.onPressed, required this.urlImages});

  final String price;
  final String name;
  final String description;
  final List<String> urlImages;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          width: double.infinity,
          child: CustomProductPageView( urlImages1: urlImages,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Text(name, style: Styles.styleExtraBoldLeagueSpartan20),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 17, left: 15),
                child: Text(
                  '\$$price',
                  style: Styles.styleExtraBoldLeagueSpartan26,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(Assets.imagesShare)),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12,
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
