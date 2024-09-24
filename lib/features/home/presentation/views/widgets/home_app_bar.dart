import 'package:flutter/material.dart';
import 'package:kendaka_test/features/home/presentation/views/widgets/search_text_field.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, this.onTap, this.arrowIsVisible = false});
  final Function()? onTap;
  final bool? arrowIsVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          arrowIsVisible == true
              ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_sharp)),
              )
              : const SizedBox(),
          const SizedBox(
              width: 70,
              height: 56,
              child:
                  Image(image: AssetImage("Assets/images/LogoHomePage.png"))),
          const SizedBox(width: 12),
          Expanded(
            child: SearchTextField(
                hintText: "Search",
                iconData: Icons.search_rounded,
                onTap: onTap),
          )
        ],
      ),
    );
  }
}
