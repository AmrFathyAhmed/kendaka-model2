import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/most_popular_list_view.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/cloth_shop_section.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/delivery_option.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/product_images.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/product_info.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/product_view_bottom_buttons.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/rating_section.dart';
import 'package:kendaka_test/features/market_profile/presentation/views/shop_bottom_sheet.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/specifications_section.dart';
import 'package:kendaka_test/features/product/presentation/views/widgets/variations_section.dart';
import 'package:kendaka_test/generated/assets.dart';

import '../../../../product_reviews/presentation/views/product_reviews_view.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final urlImages1 = [
      Assets.imagesProduct1,
      Assets.imagesProduct1,
      Assets.imagesProduct1,
      Assets.imagesProduct1,
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductInfo(
            urlImages: urlImages1,
            name: 'pink shirt',
            price: '17,00',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar.',
            onPressed: () {},
          ),
          ClothShopSection(
            nameOfShop: 'Cloth Shop',
            onTap: () {
                showModalBottomSheet(
                    context: context,

                    builder: (context) {
                      return const ShopBottomSheet();
                    });

            },
          ),
          Variations(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: height / 1.55, // Set height of bottom sheet
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      children: [
                        // Text for product name and price
                        Container(
                          height: 141,
                          color: const Color(0xFFF8FAFF),
                        ),

                        const Spacer(),
                        // Row for Add to cart and Buy now buttons
                        ProductViewBottomButtons(
                          addToCartButton: () {},
                          buyNowButton: () {},
                          likeButton: () {},
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  );
                },
              );
            },
            size: 'M',
            color: 'Pink',
          ),
          const ProductImages(
            productImage1: Assets.imagesProduct2,
            productImage2: Assets.imagesProduct3,
            productImage3: Assets.imagesProduct4,
          ),
          const SpecificationsSection(
            detail1: 'Cotton 95%',
            detail2: 'Nylon 5%',
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 24, bottom: 12),
            child: Text(
              'Delivery',
              style: Styles.styleExtraBoldLeagueSpartan20,
            ),
          ),
          const DeliveryOption(
            price: '3,00',
            duration: '5-7 days',
            label: 'Standard',
          ),
          const SizedBox(
            height: 6,
          ),
          const DeliveryOption(
            price: '12,00',
            duration: '1-2 days',
            label: 'Express\t\t\t\t',
          ),
          RatingSection(
            userRatedImage: Assets.imagesUserRateInProduct,
            generalRate: '4/5',
            name: 'Veronika',
            rate: 4.0,
            comment:
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ...',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductReviewsView(),
                  ));
            },
          ),
          const SizedBox(
            height: 23,
          ),
          const MostPopularListView(),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          ProductViewBottomButtons(
            addToCartButton: () {},
            buyNowButton: () {},
            likeButton: () {},
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
