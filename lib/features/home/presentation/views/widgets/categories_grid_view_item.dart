import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CategoriesGridViewItem extends StatelessWidget {
  const CategoriesGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(

        decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.imagesCategoriesgrideTest1,
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.width * 0.22,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.imagesCategoriesgrideTest2,
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.width * 0.22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.imagesCategoriesgrideTest3,
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.width * 0.22,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.imagesCategoriesgrideTest4,
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.width * 0.22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const CategoriesLabel(),
          ],
        ),
      ),
    );
  }
}

class CategoriesLabel extends StatelessWidget {
  const CategoriesLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Clothing",
            style: Styles.styleBoldLeagueSpartan17,
          ),
          Container(
            height: 20,
            width: 38,
            decoration: BoxDecoration(
              color: const Color(0xffF3F3F3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                "109",
                style: Styles.styleBoldLeagueSpartan12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
