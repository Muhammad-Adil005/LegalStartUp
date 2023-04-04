import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Login/LoginScreen.dart';
import 'getStartedScreen2.dart';

class getStartedpage1 extends StatefulWidget {
  const getStartedpage1({Key? key}) : super(key: key);

  @override
  State<getStartedpage1> createState() => _getStartedpage1State();
}

class _getStartedpage1State extends State<getStartedpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 90),
                child: Image(
                  image: AssetImage('assets/images/Group.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image(
                  image: AssetImage('assets/images/tablet.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Invest Today',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff232323),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Etiam elementum pharetra eros, ac tincidunt mauris',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'fringilla eu.Lorem ipsum dolor sit amet, consectetur',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'adipiscing elit.Etiam elementum pharetra eros, ac tincidunt',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'mauris fringilla eu.',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loginpage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 53.h,
                    width: 162.w,
                    decoration: BoxDecoration(
                      color:Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Get Started",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
