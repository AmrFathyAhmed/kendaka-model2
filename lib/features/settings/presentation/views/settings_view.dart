import 'package:flutter/material.dart';
import 'package:kendaka_test/features/cart/presentation/views/cart_view_body.dart';
import 'package:kendaka_test/features/category/presentation/views/widgets/category_view_body.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/bottom_navigationbar_widget.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:kendaka_test/features/settings/presentation/views/widgets/settings_view_body.dart';

import '../../../wishlist/presentation/views/widgets/wishlist_view_body.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  int _currentIndex = 4;

  final List<Widget> _body = const [HomeViewBody(), WishlistViewBody(),CategoryViewBody(),CartViewBody(),SettingsViewBody()];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[_currentIndex],
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
