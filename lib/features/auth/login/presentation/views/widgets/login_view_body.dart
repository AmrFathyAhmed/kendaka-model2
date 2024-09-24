import 'package:flutter/material.dart';
import 'package:kendaka_test/core/widgets/cancel_button.dart';
import 'package:kendaka_test/features/auth/login/presentation/views/password_view.dart';
import 'package:kendaka_test/features/auth/login/presentation/views/widgets/custom_text_field.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../welcome_view/presentation/views/widgets/custom_button.dart';
import '../../../../welcome_view/presentation/views/widgets/logo_with_elevation.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("Assets/images/BubblesLogin.png"),
            fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height<750?MediaQuery.of(context).size.height*1.2:MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 54),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_outlined),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const Center(child: LogoWithElevation(size: 134, elevation: 1)),
                // Expanded(flex: 5,child: SizedBox()),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .168,
                ),
                Text(
                  "Login",
                  style: Styles.styleBoldLeagueSpartan28
                      .copyWith(fontSize: 52, fontWeight: FontWeight.w800),
                ),
                const Row(
                  children: [
                    Text(
                      "Good to see you back! ",
                      style: Styles.styleLightInterLight19,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.black,
                    )
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                CustomTextField2(
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomButton(
                  text: "Next",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PassWordView(),
                        ));
                  },
                ),
                const SizedBox(
                  height: 14,
                ),
                CancelButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
                // ,Expanded(flex: 2,child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
