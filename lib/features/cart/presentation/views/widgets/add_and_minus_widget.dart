import 'package:flutter/material.dart';
import 'package:kendaka_test/features/wishlist/presentation/views/widgets/properties_box.dart';

import '../../../../../constants.dart';

class AddAndMinisWidget extends StatelessWidget {
  const AddAndMinisWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.remove_circle_outline_sharp,
          color: kPrimaryColor,
          size: MediaQuery.of(context).size.width < 400
              ? MediaQuery.of(context).size.width * .07
              : 38,
        ),
        padding: EdgeInsets.zero,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width < 400
            ? MediaQuery.of(context).size.width * .008
            : 6,
      ),
      PropertiesBox(
        text: "1",
        width: MediaQuery.of(context).size.width < 400
            ? MediaQuery.of(context).size.width * .08
            : 38,
        height: MediaQuery.of(context).size.width < 400
            ? MediaQuery.of(context).size.width * .06
            : 30,
      ),
      SizedBox(
          width: MediaQuery.of(context).size.width < 400
              ? MediaQuery.of(context).size.width * .008
              : 6),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.add_circle_outline_sharp,
          color: kPrimaryColor,
          size: MediaQuery.of(context).size.width < 400
              ? MediaQuery.of(context).size.width * .07
              : 38,
        ),
        padding: EdgeInsets.zero,
      ),
    ]);
  }
}
