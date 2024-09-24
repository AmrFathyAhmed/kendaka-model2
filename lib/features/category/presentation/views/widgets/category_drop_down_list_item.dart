import 'package:flutter/material.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/features/category/presentation/views/widgets/invisible_grid_view.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CategoryDropDownListItem extends StatefulWidget {
  const CategoryDropDownListItem({super.key, this.title = "1 جرام"});
  final String? title;

  @override
  _CategoryDropDownListItemState createState() => _CategoryDropDownListItemState();
}

class _CategoryDropDownListItemState extends State<CategoryDropDownListItem> {
  bool isContainerVisible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isContainerVisible = !isContainerVisible;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54.withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 3, top: 3, bottom: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                Assets.imagesCategoriesgrideTest3,
                                fit: BoxFit.fill,
                                width: 44,
                                height: 44,
                              )),
                          const SizedBox(
                            width: 14,
                          ),
                          const Text(
                            "Clothing",
                            style: Styles.styleBoldLeagueSpartan17,
                          ),
                        ],
                      ),
                      isContainerVisible == true
                          ? const ImageIcon(
                              AssetImage(Assets.imagesIconArrowUp),
                              color: kPrimaryColor,
                            )
                          : // Use your SVG asset here
                          const ImageIcon(AssetImage(Assets.imagesIconArrow)),
                    ],
                  ),
                ),
              ),
            ),
            if (isContainerVisible) const InvisibleGridView(),
          ],
        ),
      ),
    );
  }
}
