import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      this.hintText,
      this.iconData,
      this.obscureText = false,
      this.onChanged,
      this.validator,
      this.onTap});

  final String? hintText;
  final IconData? iconData;
  final bool? obscureText;
  final Function(String)? onChanged;
  final Function()? onTap;
  String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: widget.obscureText!,
        validator: widget.validator,
        onChanged: widget.onChanged,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '${widget.hintText}',
          hintStyle: const TextStyle(
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w400,
              color: Color(0xff707070),
              fontSize: 18),
          prefixIcon: GestureDetector(
              onTap: widget.onTap,
              child: Icon(widget.iconData)),
          contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        ));
  }
}

//==========================================================================
class CustomTextField2 extends StatefulWidget {
  CustomTextField2(
      {super.key,
      this.hintText,
      this.iconData,
      this.obscureText = false,
      this.onChanged,
      this.validator,
      this.onTap,
      this.maxLine,
      this.controller,
      this.onSubmit});

  final String? hintText;
  final int? maxLine;
  final IconData? iconData;
  final bool? obscureText;
  final Function(String)? onChanged;
  final Function(String)? onSubmit;
  final Function()? onTap;
  final TextEditingController? controller;

  String? Function(String?)? validator;

  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 5,
            ),
          ],
        ),
        child: TextFormField(
          obscureText: widget.obscureText!,
          validator: widget.validator,
          onChanged: widget.onChanged,
          textAlign: TextAlign.left,
          controller: widget.controller,
          decoration: InputDecoration(
            prefixIconColor: kPrimaryColor,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(32)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32), // Border radius
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide.none),
            hintText: '${widget.hintText}',
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xffD2D2D2),
                fontSize: 14),
            suffixIcon: GestureDetector(
                onTap: widget.onTap,
                child: Icon(widget.iconData)),
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          ),
          cursorColor: kPrimaryColor,
        ),
      ),
    );
  }
}
