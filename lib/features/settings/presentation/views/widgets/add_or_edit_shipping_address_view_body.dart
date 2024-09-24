import 'package:flutter/material.dart';
import 'package:kendaka_test/constants.dart';
import 'package:kendaka_test/core/utils/styles.dart';
import 'package:kendaka_test/core/widgets/custom_button.dart';
import 'package:kendaka_test/features/settings/presentation/views/widgets/settings_custom_text_field.dart';

class AddOrEditShippingAddressViewBody extends StatefulWidget {
  const AddOrEditShippingAddressViewBody({super.key});

  @override
  State<AddOrEditShippingAddressViewBody> createState() =>
      _AddOrEditShippingAddressViewBodyState();
}

class _AddOrEditShippingAddressViewBodyState
    extends State<AddOrEditShippingAddressViewBody> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _townController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  'Shipping Address',
                  style: Styles.styleMediumLeagueSpartan16,
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Address',
                      style: Styles.styleSemiBold13,
                    ),
                    SettingsCustomTextField(
                      height: 60,
                      hintText: 'Romina',
                      hintStyle: Styles.styleMediumLeagueSpartan17
                          .copyWith(color: Colors.black),
                      passwordHide: false,
                      controller: _addressController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const Text(
                      'Town / City',
                      style: Styles.styleSemiBold13,
                    ),
                    SettingsCustomTextField(
                      height: 60,
                      hintStyle: Styles.styleMediumLeagueSpartan17
                          .copyWith(color: Colors.black),
                      hintText: 'Banglore',
                      passwordHide: false,
                      controller: _townController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const Text(
                      'Postcode',
                      style: Styles.styleSemiBold13,
                    ),
                    SettingsCustomTextField(
                      height: 60,
                      hintText: 'Required',
                      hintStyle: Styles.styleMediumLeagueSpartan16
                          .copyWith(color: Colors.grey),
                      passwordHide: false,
                      controller: _postalCodeController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const Text(
                      'Phone Number',
                      style: Styles.styleSemiBold13,
                    ),
                    SettingsCustomTextField(
                      height: 60,
                      hintStyle: Styles.styleMediumLeagueSpartan16
                          .copyWith(color: Colors.grey),
                      hintText: 'Required',
                      passwordHide: false,
                      controller: _phoneController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 273),
            CustomButton2(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Handle form submission
                  debugPrint('Address: ${_addressController.text}');
                  debugPrint('Town/City: ${_townController.text}');
                  debugPrint('Postcode: ${_postalCodeController.text}');
                  debugPrint('Phone Number: ${_phoneController.text}');
                }
              },
              backgroundColor: kPrimaryColor,
              text: 'Save Changes',
              buttonHeight: 40,
              buttonWidth: 335,
              borderRadius: BorderRadius.circular(9),
              textStyle: Styles.styleLightInterLight16.copyWith(color: Colors.white),
            ),

            const SizedBox(height: 34),
          ],
        ),
      ),
    );
  }

}
