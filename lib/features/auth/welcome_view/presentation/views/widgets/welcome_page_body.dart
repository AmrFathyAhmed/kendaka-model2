import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/auth/sign_up/presentation/views/sign_up_view.dart';
import '../../../../login/presentation/views/login_page.dart';
import 'custom_button.dart';
import 'titled_arrow_button.dart';
import 'logo_with_elevation.dart';

class WelcomeViewBody extends StatelessWidget
{
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(flex:7,child: SizedBox()),

        const LogoWithElevation(size: 134, elevation: 3),
        const SizedBox(height: 24,),
        Center(child: Text("Kendaka",style:Styles.styleExtraBoldLeagueSpartan26.copyWith(fontSize: 42.84,fontWeight: FontWeight.w900) ,)),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 54,vertical: 15),

          child: Center(child: Text("Beautiful eCommerce UI Kit for your online store",style: Styles.styleLightInterLight19,textAlign: TextAlign.center,)),
        ),
        const Expanded(flex:3,child: SizedBox()),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomButton(text: "Let's get started",onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpView(),));
          } ,),
        ),
        TitledArrowButton(onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView(),));},text: "I already have an account",),
        const Expanded(
            flex:2,child: SizedBox()),
      ],
    );
  }
}

