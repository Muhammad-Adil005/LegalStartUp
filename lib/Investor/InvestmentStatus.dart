import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InvestmentStatus extends StatelessWidget {
  const InvestmentStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Expanded(
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                children: [
                  Container(
                    height: 230.h,
                    child: Column(
                      children: [
                        Spacer(flex: 2),
                        Container(
                          height: 66,
                          width: 66,
                          child: Image.asset(
                            'assets/spotify.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Spotify',
                          style: GoogleFonts.nunito(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        Text(
                          '\$ 5404.00',
                          style: GoogleFonts.dmSans(
                              fontSize: 32, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          'Investment',
                          style: GoogleFonts.dmSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(35, 35, 35, 0.5),
                          ),
                        ),
                        Spacer(flex: 2),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color.fromRGBO(157, 208, 255, 0.4),
                  ),
                  Container(
                    width: 390.w,
                    height: 240.h,
                    margin: EdgeInsets.only(left: 23.w, right: 23.w),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 1,
                                color: Color(0xff232323),
                              ),
                            ),
                            Container(
                              width: 15.w,
                              height: 15.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff232323),
                                  width: 1,
                                ),
                                shape: BoxShape.circle,
                                color: Color(0xff232323),
                              ),
                              child: Image(
                                width: 7.w,
                                height: 5.h,
                                image: AssetImage('assets/tick.png'),
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 1,
                                color: Color.fromRGBO(35, 35, 35, 0.5),
                              ),
                            ),
                            Container(
                              width: 15.w,
                              height: 15.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(35, 35, 35, 0.5),
                                    width: 1,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.white),
                            ),
                            Expanded(
                              child: Container(
                                width: 1,
                                color: Color.fromRGBO(35, 35, 35, 0.5),
                              ),
                            ),
                            Container(
                              width: 15.w,
                              height: 15.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(35, 35, 35, 0.5),
                                    width: 1,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.white),
                            ),
                            Expanded(
                              child: Container(
                                width: 1,
                                color: Color.fromRGBO(35, 35, 35, 0.5),
                              ),
                            ),
                            Container(
                              width: 15.w,
                              height: 15.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(35, 35, 35, 0.5),
                                    width: 1,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.white),
                            ),
                            Expanded(
                              child: Container(
                                width: 1,
                                color: Color.fromRGBO(35, 35, 35, 0.5),
                              ),
                            ),
                            Container(
                              width: 15.w,
                              height: 15.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(35, 35, 35, 0.5),
                                    width: 1,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(width: 14.w),
                        Container(
                          width: 315.w,
                          child: Column(
                            children: [
                              Container(
                                height: 5,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Started',
                                      style: GoogleFonts.dmSans(
                                        fontSize: 1,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Container(
                                height: 15.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Started ',
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff232323),
                                      ),
                                    ),
                                    Container(
                                      width: 15.w,
                                      height: 15.h,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xff13B887),
                                          width: 1,
                                        ),
                                        shape: BoxShape.circle,
                                        color: Color(0xff13B887),
                                      ),
                                      child: Image(
                                        width: 7.w,
                                        height: 5.h,
                                        image: AssetImage('assets/tick.png'),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Container(
                                height: 15.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Submitted',
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff232323),
                                      ),
                                    ),
                                    Text(
                                      "1 Day Ago",
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: Color.fromRGBO(35, 35, 35, 0.7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Container(
                                height: 15.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Funds Recieved',
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff232323),
                                      ),
                                    ),
                                    Container(
                                      height: 15.h,
                                      width: 15.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xff13B887),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.hourglass_bottom_outlined,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Container(
                                height: 15.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Funds Approved',
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff232323),
                                      ),
                                    ),
                                    Container(
                                      height: 15.h,
                                      width: 15.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xff13B887),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.hourglass_bottom_outlined,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Container(
                                height: 15.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Funds Invested',
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff232323),
                                      ),
                                    ),
                                    Container(
                                      height: 15.h,
                                      width: 15.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xff13B887),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.hourglass_bottom_outlined,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color.fromRGBO(157, 208, 255, 0.4),
                  ),
                  SizedBox(height: 21.h),
                  Container(
                    padding: EdgeInsets.only(left: 23.w, right: 23.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Submitted',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff232323),
                          ),
                        ),
                        SizedBox(height: 18.h),
                        Text(
                          'Your investment has been submitted. Once we recieve your funds we will get back to you shortly & Update your investment Status. Thank you!',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: Color.fromRGBO(35, 35, 35, 0.75),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
