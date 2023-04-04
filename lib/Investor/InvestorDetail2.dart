import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Components/CustomTextbox.dart';
import 'Components/Phonetextbox.dart';
import 'DashboardInvestor.dart';
import 'ViewCampaign.dart';

class InvestorDetail2 extends StatefulWidget {
  InvestorDetail2({Key? key}) : super(key: key);

  @override
  State<InvestorDetail2> createState() => _InvestorDetail2State();
}

class _InvestorDetail2State extends State<InvestorDetail2> {
  final items = [
    'Worker',
    'Employee',
    'Self-employed',
  ];
  final items2 = ['Single', 'Married', 'Separated', 'Widowed ', 'Divorced '];
  String? value;
  String? value2;

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 390.w,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 23.w, right: 23.w),
                width: 390.w,
                height: 111.h,
                child: Container(
                  padding: EdgeInsets.only(top: 40.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios_new),
                      Text(
                        'Investment Details',
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff232323)),
                      ),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.black,
                            child: Icon(
                              size: 16,
                              Icons.notifications_none_sharp,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            top: 0.h,
                            right: 0.w,
                            child: Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                color: Color(0xff13B887),
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: 390.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 176.w,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle),
                            height: 20,
                            width: 21,
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Color(0xff232323)),
                              ),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Expanded(
                            child: Divider(
                              height: 1.h,
                              color: Color(0xff13B887),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xffBA55D3),
                                shape: BoxShape.circle),
                            height: 20,
                            width: 21,
                            child: Center(
                              child: Text(
                                '2',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Expanded(
                            child: Divider(
                              height: 1.h,
                              color: Color(0xff13B887),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle),
                            height: 20,
                            width: 21,
                            child: Center(
                                child: Text(
                              '3',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: Color(0xffBA55D3),
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Container(
                      width: 204.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Contact Info',
                            style: GoogleFonts.dmSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff232323)),
                          ),
                          Text(
                            'Personal Info',
                            style: GoogleFonts.dmSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff232323)),
                          ),
                          Text(
                            'Account Info',
                            style: GoogleFonts.dmSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff232323)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29.h),
              Expanded(
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 23.w, right: 23.w),
                        child: Text(
                          'Enter Personal Info',
                          style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff232323)),
                        ),
                      ),
                      SizedBox(height: 23.h),
                      Container(
                        margin: EdgeInsets.only(left: 23.w, right: 23.w),
                        padding: EdgeInsets.only(left: 22.w, right: 20.w),
                        height: 58.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEEEEEE),
                        ),
                        child: new DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              "Employment Status",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffACA9A9),
                              ),
                            ),
                            value: value,
                            isExpanded: true,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            iconSize: 36,
                            items: items.map(buildMenuItem).toList(),
                            onChanged: (value) => setState(
                              () => this.value = value,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        margin: EdgeInsets.only(left: 23.w, right: 23.w),
                        padding: EdgeInsets.only(left: 22.w, right: 20.w),
                        height: 58.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEEEEEE),
                        ),
                        child: new DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              "Marital Status",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffACA9A9),
                              ),
                            ),
                            value: value2,
                            isExpanded: true,
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffACA9A9)),
                            iconSize: 36,
                            items: items2.map(buildMenuItem).toList(),
                            onChanged: (value) => setState(
                              () => this.value2 = value,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Phonetextbox(
                        text: 'Number Of Dependents',
                      ),
                      SizedBox(height: 10.h),
                      Phonetextbox(
                        text: 'Date of Birth',
                      ),
                      SizedBox(height: 10.h),
                      CustomTextbox(
                        text: 'Citizenship',
                      ),
                      SizedBox(height: 10.h),
                      Phonetextbox(
                        text: 'ID Card no',
                      ),
                      SizedBox(height: 16.h),
                      InkWell(
                        onTap: () => openDialog(),
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 23.w, right: 23.w),
                          height: 58.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffBA55D3),
                          ),
                          child: Text(
                            'Proceed',
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );

  DropdownMenuItem<String> buildMenuItem(String items) => DropdownMenuItem(
        value: items,
        child: Text(
          items,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            color: Color(0xffACA9A9),
            fontSize: 14,
          ),
        ),
      );
  Future openDialog() => showDialog(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.zero,
              elevation: 0,
              title: null,
              content: Container(
                padding: EdgeInsets.only(left: 28.w, right: 28.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(19),
                ),
                height: 238.h,
                width: 344.w,
                child: Column(
                  children: [
                    Spacer(),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewCampaign()),
                          );
                        },
                        child: Image(
                          image: AssetImage('assets/checkmark.png'),
                        ),
                      ),
                    ),
                    Text(
                      'DONE',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: Color(0xff232323),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "We have recieved your information, our team will analyze your information and return back shortly to you!",
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff232323),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
          );
        },
      );
}
