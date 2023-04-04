import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'AppBarContainer.dart';
import 'floating_action_button.dart';

class RecordsScreen extends StatelessWidget {
  const RecordsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarContainer(text: 'Records', icon: Icons.help_outline),
              SizedBox(height: 26.h),
              Container(
                padding: EdgeInsets.only(left: 23.w, right: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Investment',
                      style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 26.h),
                    Container(
                      padding: EdgeInsets.only(left: 1.w),
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Container(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Investment',
                            style: GoogleFonts.dmSans(
                                color: Color(0xff232323),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                            height: 17,
                            width: 17,
                            child: Image(
                              image: AssetImage('assets/exclamatory_icon.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      '\$5404.00',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      padding: EdgeInsets.only(left: 1),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Container(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date Invested',
                            style: GoogleFonts.dmSans(
                                color: Color(0xff232323),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                            height: 17,
                            width: 17,
                            child: Image(
                              image: AssetImage('assets/exclamatory_icon.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '22-Dec-2022',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 55.h),
                    Text(
                      'Shares Record',
                      style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 25.h),
                    Container(
                      padding: EdgeInsets.only(left: 1),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Container(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Shares',
                            style: GoogleFonts.dmSans(
                                color: Color(0xff232323),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                            height: 17,
                            width: 17,
                            child: Image(
                              image: AssetImage('assets/exclamatory_icon.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '\$25',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 14.h),
                    Container(
                      padding: EdgeInsets.only(left: 1),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Container(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price Per Share',
                            style: GoogleFonts.dmSans(
                                color: Color(0xff232323),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                              height: 17,
                              width: 17,
                              child: Image(
                                  image: AssetImage(
                                      'assets/exclamatory_icon.png')))
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '\$250',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 54.h),
                    MaterialButton(
                      onPressed: () {},
                      height: 52.h,
                      color: Color(0xffBA55D3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'View Bank Statement',
                            style: GoogleFonts.dmSans(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            width: 21,
                            height: 21,
                            decoration: BoxDecoration(
                                color: Color(0xff232323),
                                shape: BoxShape.circle),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward_rounded,
                                size: 15,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    MaterialButton(
                      onPressed: () {},
                      height: 52.h,
                      color: Color(0xffBA55D3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'View Financial Record',
                            style: GoogleFonts.dmSans(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            width: 21,
                            height: 21,
                            decoration: BoxDecoration(
                                color: Color(0xff232323),
                                shape: BoxShape.circle),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward_rounded,
                                size: 15,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatButton(),
    );
  }
}
