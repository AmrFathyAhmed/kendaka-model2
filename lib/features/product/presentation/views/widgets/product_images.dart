import 'package:flutter/material.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({
    super.key, required this.productImage1, required this.productImage2, required this.productImage3,
  });
  final String productImage1;
  final String productImage2;
  final String productImage3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12,left: 20),
      child: Row(
        children: [
          Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                productImage1,
                width: 75,
                height: 75,
              )),
          const SizedBox(
            width: 6,
          ),
          Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                productImage2,
                width: 75,
                height: 75,
                fit: BoxFit.fill,
              )),
          const SizedBox(
            width: 6,
          ),
          Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                productImage3,
                width: 75,
                height: 75,
              )),
        ],
      ),
    );
  }
}
