import 'package:flutter/material.dart';
import 'package:kendaka_test/features/auth/sign_up/presentation/views/widgets/phone_field_widget.dart';
import 'package:kendaka_test/features/home/presentation/views/home_view.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../generated/assets.dart';
import '../../../../login/presentation/views/widgets/custom_text_field.dart';
import '../../../../welcome_view/presentation/views/widgets/custom_button.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}
bool isObscureText = true;
class _SignUpViewBodyState extends State<SignUpViewBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("Assets/images/BubblesSignUp.png"),
            fit: BoxFit.contain,
            alignment: Alignment.topRight),
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
                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 54),
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
                Padding(
                  padding: const EdgeInsets.only(left:  10.0,bottom:  20),
                  child: Text(
                    "Create\nAccount",

                    style: Styles.styleBoldLeagueSpartan28
                        .copyWith(fontSize: 50),
                  ),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(height:90,child: Image(image: AssetImage(Assets.imagesUploadPhoto))),
                ),
            
                const SizedBox(
                  height: 17,
                ),
                CustomTextField2(
                  hintText: "Email",
                ),
                CustomTextField2(
                  hintText: "PassWord",
                  iconData:  isObscureText
                    ? Icons.remove_red_eye_outlined
                    : Icons.visibility_off_outlined,
                  onTap: (){
                setState(() {
                isObscureText = !isObscureText;
                });
                  },
                  obscureText: isObscureText,
                ),
                const PhoneField(),
                const SizedBox(
                  height: 36,
                ),
                CustomButton(
                  text: "Done",
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView(),));
                  },
                ),
                const SizedBox(
                  height: 14,
                ),
                const Center(
                    child: Text(
                  "Cancel",
                  style: Styles.styleLightInterLight15,
                )),
                const Expanded(flex: 2, child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
