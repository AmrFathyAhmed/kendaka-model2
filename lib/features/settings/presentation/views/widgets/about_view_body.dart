import 'package:flutter/material.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/features/auth/welcome_view/presentation/views/widgets/logo_with_elevation.dart';

class AboutViewBody extends StatelessWidget {
  const AboutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  'Settings',
                  style: Styles.styleBoldLeagueSpartan28,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Center(child: LogoWithElevation(size: 134, elevation: 1)),
          const SizedBox(
            height: 49,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'About Kendaka',
              style: Styles.styleBoldLeagueSpartan28,
            ),
          ),
          const SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
                'Shoppe - Shopping UI kit" is likely a user interface (UI) kit designed to facilitate the development of e-commerce or shopping-related applications. UI kits are collections of pre-designed elements, components, and templates that developers and designers can use to create consistent and visually appealing user interfaces.',maxLines: 9,style: Styles.styleLightInterLight16.copyWith(height: 1.7),),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('If you need help or you have any questions, feel free to contact me by email.',style: Styles.styleLightInterLight16.copyWith(height: 1.7),maxLines: 2,),
          ),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('hello@mydomain.com',style: Styles.styleBoldLeagueSpartan17),
          ),
          const SizedBox(height: 92,),
        ],
      ),
    );
  }
}
