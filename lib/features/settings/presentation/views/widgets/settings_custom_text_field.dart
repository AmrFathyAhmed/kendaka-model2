import 'package:flutter/material.dart';

class SettingsCustomTextField extends StatefulWidget {
  const SettingsCustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.fieldKey,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,

    required this.passwordHide, required this.hintStyle, this.height,
  });

  final TextEditingController? controller;
  final Key? fieldKey;

  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;

  final ValueChanged<String>? onFieldSubmitted;

  final String hintText;

  final bool passwordHide;
  final TextStyle hintStyle;
  final double? height;

  @override
  State<SettingsCustomTextField> createState() =>
      _SettingsCustomTextFieldState();
}

class _SettingsCustomTextFieldState extends State<SettingsCustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: widget.height ?? 50,
      child: TextFormField(

        validator: widget.validator,
        onSaved: widget.onSaved,
        key: widget.fieldKey,
        controller: widget.controller,
        obscureText: widget.passwordHide == true ? _obscureText : false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: widget.hintStyle,
          fillColor: const Color(0xFFEBF8FF),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}


