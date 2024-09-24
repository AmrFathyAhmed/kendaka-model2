import 'package:flutter/material.dart';
import 'package:kendaka_test/features/auth/password_recovery/presentation/views/password_recovery_options_view.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../welcome_view/presentation/views/widgets/titled_arrow_button.dart';
import 'custom_text_field.dart';

class PassWordViewBody extends StatefulWidget {
  const PassWordViewBody({super.key});

  @override
  State<PassWordViewBody> createState() => _PassWordViewBodyState();
}

class _PassWordViewBodyState extends State<PassWordViewBody> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("Assets/images/BubblesPassword.png"),
            fit: BoxFit.contain,
            alignment: Alignment.topRight),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SvgPicture.asset("Assets/images/BubblesLogin.svg",)
                // Expanded(child: Image(image: AssetImage("Assets/images/BubblesLogin.png"),fit:BoxFit.fill ,))
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 9, vertical: 54),
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
                const CircleAvatar(
                  radius: 58,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("Assets/images/Avatar.png"),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),

                const Text("Hello, Romina!!",
                    style: Styles.styleBoldLeagueSpartan28),
                const SizedBox(
                  height: 30,
                ),
                const Text("Type your password",
                    style: Styles.styleLightInterLight19),

                const SizedBox(
                  height: 17,
                ),
                CustomTextField2(
                  hintText: "PassWord",
                  iconData: isObscureText
                      ? Icons.remove_red_eye_outlined
                      : Icons.visibility_off_outlined,
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText;
                    });
                  },
                  obscureText: isObscureText,
                ),
                const SizedBox(height: 12.63,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const PasswordRecoveryOptionsView(),
                        ));
                  },
                  child: Text(
                    'Forgot your password?',
                    style: Styles.styleLightInterLight16.copyWith(fontSize: 15),
                  ),
                ),
                const Expanded(flex: 5, child: SizedBox()),
                TitledArrowButton(
                  text: "Not you?",
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
