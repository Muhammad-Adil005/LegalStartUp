import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Login/LoginScreen.dart';

class getStartedpage2 extends StatefulWidget {
  const getStartedpage2({Key? key}) : super(key: key);

  @override
  State<getStartedpage2> createState() => _getStartedpage2State();
}

class _getStartedpage2State extends State<getStartedpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Image(
                  image: AssetImage('assets/images/tablet.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Stack(
                children: [
                  Image(
                    height: 350.h,
                    width: 300.w,
                    image: AssetImage('assets/images/Ellipse5.png'),
                  ),
                  Image(
                    height: 370.h,
                    width: 300.w
                    ,
                    image: AssetImage('assets/images/Ellipse6.png'),
                  ),
                  Column(
                    children: [
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
                            height:53.h,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
