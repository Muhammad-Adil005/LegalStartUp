import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Phonetextbox extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final double textSize;

  TextEditingController? controller;
  Phonetextbox({
    Key? key,
    this.width = 344,
    this.text = "Name",
    this.textSize = 14,
    this.height = 58,
  }) : super(key: key);

  @override
  State<Phonetextbox> createState() => _PhonetextboxState();
}

class _PhonetextboxState extends State<Phonetextbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 23.w, right: 23.w),
      padding: EdgeInsets.only(left: 22.w),
      height: (widget.height).h,
      width: (widget.width).w,
      decoration: BoxDecoration(
        color: Color(0xffEEEEEE),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: TextFormField(
          style: GoogleFonts.dmSans(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: widget.textSize,
          ),
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            border: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: widget.text,
            hintStyle: GoogleFonts.dmSans(
              color: Color(0xffACA9A9),
              fontSize: widget.textSize,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
