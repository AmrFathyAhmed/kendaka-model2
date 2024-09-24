import 'package:flutter/material.dart';
import 'package:kendaka_test/features/product/presentation/views/product_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/container_with_boxshadow.dart';
import '../../../../../generated/assets.dart';

class WishListImageWithDeleteIcon extends StatelessWidget {
  const WishListImageWithDeleteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWithBoxShadow(
      height: MediaQuery.of(context).size.height * .15,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(alignment: Alignment.bottomLeft, children: [
            GestureDetector(
              onTap: (){ Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductView(),
                  ));},
              child: AspectRatio(
                aspectRatio: 120 / 100,
                child: Image.asset(
                  Assets.imagesClothing,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: CircleAvatar(
                radius: 17.5,
                backgroundColor: Colors.white,
                child: ImageIcon(
                  AssetImage(Assets.imagesDeleteIcon),
                  color: kPrimaryColor,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}