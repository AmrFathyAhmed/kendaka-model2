import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class SearchTextField extends StatefulWidget
{
  SearchTextField({super.key, this.hintText, this.iconData, this.obscureText =false , this.onChanged, this.validator, this.onTap, this.maxLine, this.controller, this.onSubmit});
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
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,),
      child: TextFormField(
        onTap: widget.onTap,
        obscureText:widget.obscureText!,
        validator: widget.validator,

        onChanged: widget.onChanged,
        textAlign: TextAlign.left,

        controller: widget.controller,
        decoration: InputDecoration(

          prefixIconColor: kPrimaryColor,
          filled: true,
          fillColor: const Color(0xffF8F8F8),

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




          hintText: '${widget.hintText}',
          hintStyle: const TextStyle(fontWeight: FontWeight.w500,color: Color(0xffC7C7C7),fontSize: 16,fontFamily: kLeagueSpartan),
          suffixIcon: GestureDetector(onTap: widget.onTap, child: Icon(widget.iconData)),
          contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),

        ),
        cursorColor: kPrimaryColor,


      ),
    );
  }
}
