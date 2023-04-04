import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarContainer extends StatelessWidget {
  AppBarContainer({required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 111.h,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                spreadRadius: 2,
                blurRadius: 5,
              )
            ]),
        child: Container(
          padding: EdgeInsets.only(left: 25.w, top: 40.h, right: 25.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_new),
              Text(
                text,
                style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff232323)),
              ),
              Icon(
                icon,
                color: Color(0xff232323),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
