import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'AppBarContainer.dart';
import 'floating_action_button.dart';

class Position extends StatelessWidget {
  const Position({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatButton(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              AppBarContainer(
                icon: Icons.help_outline,
                text: 'Position',
              ),
              SizedBox(height: 26.h),
              Container(
                margin: EdgeInsets.only(left: 23.w, right: 23.w),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Status',
                  style: GoogleFonts.dmSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              Container(
                width: 390.w,
                height: 162.h,
                margin: EdgeInsets.only(left: 23.w, right: 23.w),
                decoration: BoxDecoration(
                  color: Color(0xff232323),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 24.w, right: 20.w, top: 14.w),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 31.h,
                                    width: 31.w,
                                    child: ImageIcon(
                                      AssetImage('assets/spotify.png'),
                                      color: Color(0xff00DA5A),
                                    ),
                                  ),
                                  SizedBox(width: 9.w),
                                  Text(
                                    'Spotify.inc',
                                    style: GoogleFonts.dmSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '\$150.34',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '12 Shares',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Spacer(flex: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Funds Approved',
                                  style: GoogleFonts.dmSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(width: 7.w),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffBA55D3),
                                  ),
                                  child: Icon(
                                    Icons.check_outlined,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            '2 Days ago',
                            style: GoogleFonts.dmSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 6.h,
                              width: 56.w,
                              color: Color(0xffBA55D3),
                            ),
                          ),
                          Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 6.h,
                              width: 56.w,
                              color: Color(0xffBA55D3),
                            ),
                          ),
                          Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 6.h,
                              width: 56.w,
                              color: Color(0xffBA55D3),
                            ),
                          ),
                          Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 6.h,
                              width: 56.w,
                              color: Color(0xffBA55D3),
                            ),
                          ),
                          Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 6.h,
                              width: 56.w,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 0.75),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 17.h),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 23.w, right: 23.w),
                child: Text(
                  'Shares Record',
                  style: GoogleFonts.dmSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              Container(
                padding: EdgeInsets.only(left: 23.w, right: 23.w),
                child: Divider(
                  height: 0.8.h,
                  color: Color.fromRGBO(201, 203, 203, 0.61),
                ),
              ),
              ShareRecordsView(text: 'Total Shares', val: '\$25'),
              Container(
                padding: EdgeInsets.only(
                    left: 23.w, right: 23.w, top: 5.h, bottom: 5.h),
                child: Divider(
                  height: 0.8.h,
                  color: Color.fromRGBO(201, 203, 203, 0.61),
                ),
              ),
              ShareRecordsView(text: 'Price Per Share', val: '\$250'),
              ShareRecordsView(text: 'Wallet', val: '\$250'),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}

class ShareRecordsView extends StatelessWidget {
  ShareRecordsView({required this.text, required this.val});
  final String text;
  final String val;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.h,
      width: 390.w,
      padding: EdgeInsets.only(left: 23.w, right: 23.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  text,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                height: 17.h,
                width: 17.w,
                child: Icon(Icons.info_outline, color: Colors.black),
              ),
            ],
          ),
          Container(
            child: Text(
              val,
              style: GoogleFonts.dmSans(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xff232323),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
