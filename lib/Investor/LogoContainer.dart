import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 23.w),
      width: 390.w,
      child: Row(
        children: [
          Image(image: AssetImage('assets/logo.png')),
          SizedBox(width: 14.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Moto Mobiles',
                  style: GoogleFonts.poppins(
                      color: Color(0xff232323),
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Container(
                child: Text(
                  'Mobile Making & Selling Company.',
                  style: GoogleFonts.dmSans(
                      color: Color.fromRGBO(35, 35, 35, 0.75),
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
