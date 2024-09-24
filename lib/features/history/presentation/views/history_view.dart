// import 'package:flutter/material.dart';
// import 'package:kendaka_test/features/Cart/presentation/views/cart_view_body.dart';
// import 'package:kendaka_test/features/Wishlist/presentation/views/widgets/wishlist_view_body.dart';
// import 'package:kendaka_test/features/category/presentation/views/widgets/category_view_body.dart';
// import 'package:kendaka_test/features/history/presentation/views/widgets/history_view_body.dart';
// import 'package:kendaka_test/features/home/presentation/views/widgets/bottom_navigationbar_widget.dart';
// import 'package:kendaka_test/features/home/presentation/views/widgets/home_view_body.dart';
// import 'package:kendaka_test/features/settings/presentation/views/widgets/settings_view_body.dart';
//
// class HistoryView extends StatefulWidget {
//   const HistoryView({super.key});
//
//   @override
//   State<HistoryView> createState() => _HistoryViewState();
// }
//
// class _HistoryViewState extends State<HistoryView> {
//   int _currentIndex = 4;
//
//   final List<Widget> _body = const [HomeViewBody(), WishlistViewBody(),CategoryViewBody(),CartViewBody(),SettingsViewBody()];
//
//   void _onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: HistoryViewBody(),
//       bottomNavigationBar: BottomNavigationBarWidget(
//         currentIndex: _currentIndex,
//         onTap: _onTabTapped,
//       ),
//     );
//   }
// }
