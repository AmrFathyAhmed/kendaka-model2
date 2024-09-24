import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../../constants.dart';


class PhoneField extends StatefulWidget {
  const PhoneField({super.key});

  @override
  _PhoneFieldState createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical:5,horizontal: 8),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius:5,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: IntlPhoneField(
                    focusNode: focusNode,
                    decoration: InputDecoration(

                      prefixIconColor: kPrimaryColor,
                      filled: true,
                      fillColor: Colors.white,

                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(32)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32), // Border radius
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide.none
                      ),




                      hintText: 'Phone Number',
                      hintStyle: const TextStyle(fontWeight: FontWeight.w500,color: Color(0xffD2D2D2),fontSize: 14),
                      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    ),
                    languageCode: "en",
                    onChanged: (phone) {
                      debugPrint(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      debugPrint('Country changed to: ${country.name}');
                    },
                  disableLengthCheck: true,

                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // MaterialButton(
                //   child: Text('Submit'),
                //   color: Theme.of(context).primaryColor,
                //   textColor: Colors.white,
                //   onPressed: () {
                //     _formKey.currentState?.validate();
                //   },
                // ),
              ],
            ),
          ),


    );
  }
}