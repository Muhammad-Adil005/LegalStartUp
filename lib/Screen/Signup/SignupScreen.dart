import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Startup/BuildingStartupscreen.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Container(
                      height: 42.h,
                      width: 42.w,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 25.sp,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Image(
                      image: AssetImage('assets/images/Group.png'),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Text(
                  'Create an account',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff232323),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  'Create an account now to login',
                  style: GoogleFonts.dmSans(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                      color: Color(0xffACA9A9),
                    ),
                    fillColor: Color(0xffEEEEEE),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    hintText: 'Name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                      color: Color(0xffACA9A9),
                    ),
                    fillColor: Color(0xffEEEEEE),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    hintText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xffACA9A9),
                    ),
                    hintStyle: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xffACA9A9),
                    ),
                    fillColor: Color(0xffEEEEEE),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                      color: Color(0xffACA9A9),
                    ),
                    fillColor: Color(0xffEEEEEE),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    hintText: 'Phone',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BuildingStartuppage()),
                    );
                  },
                  child: Container(
                    height: 58.h,
                    width: 344.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Create',
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 25,
                        endIndent: 25,
                        thickness: 0.5,
                        color: Color(0xffACA9A9),
                      ),
                    ),
                    Text(
                      'Or',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        color: Color(0xffACA9A9),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 25,
                        endIndent: 25,
                        thickness: 0.5,
                        color: Color(0xffACA9A9),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22, left: 23, right: 23),
                child: Container(
                  //width: 344,
                  //height: 58,
                  height: 58.h,
                  width: 344.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: MediaQuery.of(context).size.height * 0.037,
                        width: MediaQuery.of(context).size.width * 0.2,
                        image: AssetImage('assets/images/google_logo.png'),
                      ),
                      Text(
                        'Continue with Google',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: Color(0xff232323),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 23, right: 23),
                child: Container(
                  //width: 344,
                  //height: 58,
                  height: 58.h,
                  width: 344.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            color: Color(0xff485A96),
                          ),
                          child: Image(
                            height: MediaQuery.of(context).size.height * 0.037,
                            width: MediaQuery.of(context).size.width * 0.2,
                            image: AssetImage('assets/images/facebook.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'Continue with Facebook',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: Color(0xff232323),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        color: Color(0xffACA9A9),
                      ),
                    ),
                    Text(
                      '  Login',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        color: Color(0xff232323),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
