import 'package:flutter/cupertino.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:kendaka_test/features/search/presentation/views/widgets/all_item_header.dart';
import 'package:kendaka_test/features/search/presentation/views/widgets/search_gird_view.dart';


class SpecificCategoryViewBody extends StatelessWidget {
  const SpecificCategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HomeAppBar(
          arrowIsVisible: true,
        ),
        SizedBox(
          height: 30,
        ),
        TitleWithFilterIcon(
          title: "Clothing",
          isSubtitleVisible: true,
          subTitle: "Dresses",
        ),
        SearchGridView()
      ],
    );
  }
}
