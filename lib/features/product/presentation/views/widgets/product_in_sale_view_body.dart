import 'package:flutter/material.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/product_images.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/product_in_sale_info.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/product_view_bottom_buttons.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/variations_section.dart';
import 'package:kendaka_test/generated/assets.dart';

class ProductInSaleViewBody extends StatelessWidget {
  const ProductInSaleViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    final urlImages1 = [
      Assets.imagesProduct1,
      Assets.imagesProduct1,
      Assets.imagesProduct1,
      Assets.imagesProduct1,
    ];
    return SingleChildScrollView(
      child: Column(
          children: [
            ProductInSaleInfo(
              hours: '00',
              minutes: '36',
              seconds: '58',
              discount: '-20%',
              urlImages: urlImages1,
              name: 'pink shirt',
              price: '17,00',
              priceAfterDiscount: '\$30,00',
              description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar.',
              onPressed: () {},
            ),
            Variations(
              onTap: () {},
              size: 'M',
              color: 'Pink',
            ),
            const Padding(
              padding: EdgeInsets.only(bottom:  18),
              child: ProductImages(
                productImage1: Assets.imagesProduct2,
                productImage2: Assets.imagesProduct3,
                productImage3: Assets.imagesProduct4,
              ),
            ),
            const SizedBox(height: 40,),
            ProductViewBottomButtons(addToCartButton: (){},buyNowButton: (){},likeButton: (){},),
            const SizedBox(height: 20,)

          ],
      ),
    );
  }
}
