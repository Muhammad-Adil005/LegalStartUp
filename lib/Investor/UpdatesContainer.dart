import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HorizontalList.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatesContainer extends StatelessWidget {
  const UpdatesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      child: Column(
        children: [
          SizedBox(height: 27.h),
          Container(
            padding: EdgeInsets.only(left: 23.w, right: 23.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent',
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xff232323)),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'View All',
                        style: GoogleFonts.dmSans(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Icon(
                        Icons.arrow_circle_right,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Container(
            height: 200.h,
            child: HorizontalList(),
            margin: EdgeInsets.only(left: 22.w),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
