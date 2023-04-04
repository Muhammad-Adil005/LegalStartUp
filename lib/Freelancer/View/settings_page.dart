import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_start_up/Freelancer/View/payment_method.dart';
import 'package:legal_start_up/Freelancer/View/settings.dart';

import 'ProfileFreelancer.dart';
import 'earning_dashboard.dart';
import 'earnings.dart';
import 'edit_profile_screen.dart';
import 'orders.dart';

class Settings_Area extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: null,
        leading:  InkWell(
            onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back_ios_rounded, color: Colors.black,)),
        actions: [
          // Expanded(child: Container()),
          Stack(
            children: <Widget>[
              Container(
                width: 40,
                child: const CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.notifications_rounded,
                      color: Colors.white,
                    )),
              ),
              Positioned(
                  top: 15,
                  right: 1,
                  child: Container(
                    width: 15.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(200)),
                    child: Text(
                      '  ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 20, left: 20),
        decoration: BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 78.h,
                      decoration: BoxDecoration(
                          // color: Colors.red
                          ),
                      width: 100.w,
                      child: CircleAvatar(
                          radius: 100.r,
                          backgroundColor: Colors.black,
                          child: Image(
                              image: AssetImage(
                                  'assets/images/img_ellipse105.png'))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      child: Text(
                        'Shaheer Ahmed',
                        style:
                            TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Graphics Designer',
                      style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfileScreen()));
                      },
                      child: Container(
                        height: 26.h,
                        width: 105.w,
                        margin: EdgeInsets.only(top: 10, right: 5, left: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 15.sp,
                              ),
                              Text(
                                'Edit Profile',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 11.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                      height: 45.h,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileFreelancer()));
                          },
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person_rounded,
                                      color: Colors.black,
                                      size: 25.sp,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "Freelancer Profile",
                                      style: GoogleFonts.dmSans(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.navigate_next_rounded,
                                      color: Colors.black,
                                      size: 25.h,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: Colors.black,
                                      size: 25.sp,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "Settings",
                                      style: GoogleFonts.dmSans(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.navigate_next_rounded,
                                      color: Colors.black,
                                      size: 25.sp,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentMethodScreen()));
                          },
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.account_balance_wallet,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "Payment Method",
                                      style: GoogleFonts.dmSans(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.navigate_next_rounded,
                                      color: Colors.black,
                                      size: 25.sp,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Earnings()));
                          },
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_exchange_outlined,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Earnings",
                                      style: GoogleFonts.dmSans(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.navigate_next_rounded,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Orders()));
                          },
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.add_chart,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Orders",
                                      style: GoogleFonts.dmSans(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.navigate_next_rounded,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EarningDashboard()));
                          },
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.curtains_closed_outlined,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Earning DashBoard",
                                      style: GoogleFonts.dmSans(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.navigate_next_rounded,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/img_group827.svg"),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        "Logout",
                                        style: GoogleFonts.dmSans(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.navigate_next_rounded,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
