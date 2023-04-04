import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Freelancer/Authentication/RegisterFreelancer1.dart';
import '../Investor/InvestorDetail.dart';
import 'Login/LoginScreen.dart';

class SelectOneProceed extends StatelessWidget {
  const SelectOneProceed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Select One To Proceed",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()),
                );
              },
              child: Center(
                child: Container(
                  height: 226.h,
                  width: 344.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Color(0xffBA55D3),
                      image: DecorationImage(
                        image: AssetImage("assets/images/featured2.png"),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 35.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/img_vector_indigo_100.svg"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "Build a Startup",
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 78.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet,elit. Etiam Etiam elementum pharetra adipiscing Etiam elementum pharetra consectetur eros, ac",
                            style: GoogleFonts.dmSans(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30.h,
                              width: 86.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Build",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffBA55D3)),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegisterFreelancer1()),
                );
              },
              child: Center(
                child: Container(
                  height: 226.h,
                  width: 344.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 35.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/img_group384.svg"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "Work for Equity / Fixed price",
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 78.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet,elit. Etiam Etiam elementum pharetra adipiscing Etiam elementum pharetra consectetur eros, ac",
                            style: GoogleFonts.dmSans(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30.h,
                              width: 86.w,
                              decoration: BoxDecoration(
                                color: Color(0xffBA55D3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text("Participate",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InvestorDetail()),
                );
              },
              child: Center(
                child: Container(
                  height: 226.h,
                  width: 344.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Color(0xff8489FC),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/mendoller.png"),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 35.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/img_group144.svg"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "Invest a Startup",
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 78.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet,elit. Etiam Etiam elementum pharetra adipiscing Etiam elementum pharetra consectetur eros, ac",
                            style: GoogleFonts.dmSans(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30.h,
                              width: 86.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Invest",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff8489FC)),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
