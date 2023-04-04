import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomTextFields extends StatelessWidget {
  CustomTextFields(
      {this.controller,
        this.obscure=false,
        this.height,
        this.validator,
        this.hintText,
        this.label,
        this.onchanged,this.prefixIcon,this.onsaved,this.onpressedLeading,this.leadinIcon,this.borderradius,this.hintColor,this.fillColor});
  var height;
  var fillColor;
  var hintText;
  var hintColor;
  var label;
  var borderradius;
  var onchanged;
  var onsaved;
  var controller;
  var prefixIcon;
  var leadinIcon;
  var onpressedLeading;
  var validator;
  var obscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:5),
      child: TextFormField(
        obscureText: obscure,
        validator: validator ,
        cursorColor: Colors.black,
        style:GoogleFonts.dmSans(textStyle: TextStyle(color: Colors.black,)),
        // cursorWidth: 20,
        decoration: InputDecoration(
          prefixIcon: prefixIcon??prefixIcon,
          suffixIcon: leadinIcon??leadinIcon,
          fillColor: fillColor!=null?fillColor:Color(0xffEEEEEE),
          filled: true,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderradius!=null?borderradius:10),
              borderSide: BorderSide(
                width: 1,
                color:Colors.white,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderradius!=null?borderradius:10),
              borderSide: BorderSide(
                width: 1,
                color: Colors.white,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderradius!=null?borderradius:10),
              borderSide: BorderSide(
                width: 1,
                color:Colors.white,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderradius!=null?borderradius:10),
              borderSide: BorderSide(
                width: 1,
                color: Colors.white,
              )),
          contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          hintText: hintText ?? hintText,
          hintStyle: GoogleFonts.dmSans(textStyle: TextStyle(color: hintColor!=null?hintColor:Colors.black,),fontSize: 14),
          // hintStyle: TextStyle()
        ),
        onChanged: onchanged ?? onchanged,
        onSaved: onsaved ?? onsaved,
        controller: controller ?? controller,
      ),
    );
  }
}
