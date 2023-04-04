import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Investor/AppBarContainer.dart';
import '../Investor/floating_action_button.dart';

class DealTerms extends StatelessWidget {
  const DealTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarContainer(text: 'Deal Terms', icon: Icons.help_outline),
              SizedBox(height: 26.h),
              Container(
                padding: EdgeInsets.only(left: 22.w, right: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Overview',
                      style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 13.h),
                    Container(
                      padding: EdgeInsets.only(left: 1.w),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 10.h),
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
                              image: AssetImage('assets/exclamatory_icon.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      '\$25',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      padding: EdgeInsets.only(left: 1.w),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Valuation',
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
                      '\$25M',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      padding: EdgeInsets.only(left: 1.w),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Investors',
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
                      '2400',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      padding: EdgeInsets.only(left: 1.w),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 42.h),
                    Text(
                      'Breakdown',
                      style: GoogleFonts.dmSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 24.h),
                    Container(
                      padding: EdgeInsets.only(left: 1.w),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Minimum Investment',
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
                    SizedBox(height: 6.h),
                    Text(
                      '\$205',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      padding: EdgeInsets.only(left: 1.w),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Maximum Investment',
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
                    SizedBox(height: 6.h),
                    Text(
                      '\$200,000',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      padding: EdgeInsets.only(left: 1.w),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 10.h),
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
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      '\$205',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      padding: EdgeInsets.only(left: 1.w),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Maximum Investment',
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
                    SizedBox(height: 6.h),
                    Text(
                      '\$200,000',
                      style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      padding: EdgeInsets.only(left: 1.w),
                      height: 1,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(201, 203, 203, 0.61),
                        color: Color(0xffC9CBCB),
                        borderRadius: BorderRadius.all(Radius.circular(0.8)),
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
