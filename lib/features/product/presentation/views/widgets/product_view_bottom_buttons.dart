import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/custom_button.dart';
import 'package:kendaka_test/generated/assets.dart';

class ProductViewBottomButtons extends StatelessWidget {
  const ProductViewBottomButtons({
    super.key, required this.likeButton, required this.addToCartButton, required this.buyNowButton,
  });

  final void Function() likeButton;
  final void Function() addToCartButton;
  final void Function() buyNowButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: likeButton,
            child: Container(
              decoration: BoxDecoration(
                  color:  Colors.grey.withOpacity(.05),

                  borderRadius: BorderRadius.circular(4)
              ),
              width: 47,
              height: 40,
              child:  Center(child: SvgPicture.asset(Assets.imagesHeart)),
            ),
          ),
          const SizedBox(width: 8,),
          CustomButton2(backgroundColor: Colors.black, text: 'Add to cart', onPressed: addToCartButton,buttonWidth: 128,buttonHeight: 40,borderRadius: BorderRadius.circular(11),textStyle: Styles.styleLightInterLight16.copyWith(color: Colors.white),),
          const SizedBox(width: 8,),
          CustomButton2(backgroundColor: kPrimaryColor, text: 'Buy now', onPressed: buyNowButton,buttonWidth: 128,buttonHeight: 40,borderRadius: BorderRadius.circular(11),textStyle: Styles.styleLightInterLight16.copyWith(color: Colors.white),),
        ],
      ),
    );
  }
}
