import 'package:flutter/material.dart';
import 'package:kendaka_test/features/cart/presentation/views/widgets/address_widget.dart';
import 'package:kendaka_test/features/cart/presentation/views/widgets/cart_app_bar.dart';
import 'package:kendaka_test/features/cart/presentation/views/widgets/cart_list_view.dart';
import 'package:kendaka_test/features/cart/presentation/views/widgets/checkout_widget.dart';
import 'package:kendaka_test/features/wishlist/presentation/views/widgets/wish_list_list_view.dart';

import '../../../../core/utils/styles.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView(
            children: const [
              CartAppBar(),
              AddressWidget(),
              CartListView(),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 22, bottom: 5),
                child: Text(
                  "From Your Wishlist",
                  style: Styles.styleBoldLeagueSpartan22,
                ),
              ),
              WishListListView(),
            ],
          ),
        ),
       const CheckoutWidget()
      ],
    );
  }
}

