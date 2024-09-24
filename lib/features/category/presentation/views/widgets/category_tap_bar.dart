import 'package:flutter/material.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';

class Category {
  final String title;
  bool isSelected;
  Category(this.title, this.isSelected);
}

List<Category> categoryList = [
  Category("All", true),
  Category("Female", false),
  Category("Male", false),



];

class HorizontalCategoriesView extends StatefulWidget
{
  const HorizontalCategoriesView({super.key, required this.onCategorySelected});
  final Function(Category) onCategorySelected;
  @override
  State<HorizontalCategoriesView> createState() =>
      _HorizontalCategoriesViewState();
}

class _HorizontalCategoriesViewState extends State<HorizontalCategoriesView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(

          height: 36,

          decoration: BoxDecoration(
              color: const Color(0xffF9F9F9),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(categoryList.length, (index) {
              return CategoryCard(
                category: categoryList[index],
                onPressed: (b) {
                  for (var category in categoryList) {
                    category.isSelected = false;
                  }
                  setState(() {
                    categoryList[index].isSelected = true;
                  });
                  widget.onCategorySelected(categoryList[index]);
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatefulWidget {
  final Category category;
  final Function(bool) onPressed;

  const CategoryCard(
      {required this.category, required this.onPressed, super.key});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.25,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 1,color:widget.category.isSelected ? kPrimaryColor : Colors.transparent
      ),
          color:
          widget.category.isSelected ? kPrimaryColor.withOpacity(.06) : Colors.transparent),
      child: TextButton(
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            widget.onPressed(true);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(widget.category.title,
                style: Styles.styleMediumLeagueSpartan16.copyWith(color: widget.category.isSelected
                    ? kPrimaryColor
                    : Colors.black)),
          )),
    );
  }
}
