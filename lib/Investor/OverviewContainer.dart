import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverviewContainer extends StatelessWidget {
  const OverviewContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 23.w, top: 15.h, right: 23.w),
      child: Column(
        children: [
          Container(
            width: 390.w,
            child: Text(
              'Highlights',
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 27.h),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Color(0xffBA55D3),
                ),
                SizedBox(width: 16.w),
                Flexible(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet risus a bibendum. Integer a nibh feugiat, congue nunc ac, auctor tortor. Nam luctus libero sed tortor luctus, sit amet porttitor ex dignissim. Nam vitae sem tortor. Etiam in risus egestas, ultricies dui nec, tempor ante. Vestibulum eu imperdiet velit,',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Color.fromRGBO(35, 35, 35, 0.75),
                    ),
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 11.h, bottom: 11.h),
            child: Divider(
              color: Color.fromRGBO(201, 203, 203, 0.61),
            ),
          ),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Color(0xffBA55D3),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Flexible(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet risus a bibendum. Integer a nibh feugiat, congue nunc ac, auctor tortor. Nam luctus libero sed tortor luctus, sit amet porttitor ex dignissim. Nam vitae sem tortor. Etiam in risus egestas, ultricies dui nec, tempor ante. Vestibulum eu imperdiet velit,',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Color.fromRGBO(35, 35, 35, 0.75),
                    ),
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 11.h, bottom: 11.h),
            child: Divider(
              color: Color.fromRGBO(201, 203, 203, 0.61),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
