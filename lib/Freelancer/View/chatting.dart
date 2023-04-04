import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import 'createOffer.dart';

class Chatting extends StatelessWidget {
  const Chatting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 30.h),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                //background color of box
                BoxShadow(
                    color: Colors.grey.shade600,
                    blurRadius: 5, // soften the shadow
                    spreadRadius: 1,
                    offset: Offset(0.0, 0.75))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(Icons.arrow_back_rounded),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.13,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/img_ellipse75.png"))),
                          ),
                          Positioned.fill(
                              child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.03,
                              width: MediaQuery.of(context).size.width * 0.03,
                              decoration: BoxDecoration(
                                  color:Theme.of(context).primaryColor,
                                  shape: BoxShape.circle),
                            ),
                          ))
                        ],
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "David",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700, fontSize: 14.sp),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Lorem ipsum dolor sit a",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Color(0xff232323).withOpacity(0.50)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/circle4364.png"),
                            color: Colors.black,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white70,
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).size.width / 1.5,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Color(0xffFFF2F2),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                    "Aliquam nec hendrerit nisl, a sceler ",
                                    style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                        color: Colors.black)),
                              ),
                              Positioned.fill(
                                bottom: -25,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '2:00 AM',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                width: MediaQuery.of(context).size.width / 1.5,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  "Aliquam nec hendrerit nisl, a sceler ",
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11.sp,
                                      color: Colors.white),
                                ),
                              ),
                              Positioned.fill(
                                bottom: -25,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '2:00 PM',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8.sp),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).size.width / 1.5,
                                height: MediaQuery.of(context).size.height / 3,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Color(0xffFFF2F2),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Create an app UI/UX for my app.",
                                            style: GoogleFonts.dmSans(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.sp,
                                                color: Colors.black)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Row(
                                      children: [
                                        Text("One Time Project",
                                            style: GoogleFonts.dmSans(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12.sp,
                                                color: Colors.black)),
                                      ],
                                    ),
                                    Divider(
                                      thickness: 0.7,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Total Price",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.sp,
                                                    color: Colors.black
                                                        .withOpacity(0.50))),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("\$60",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12.sp,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Delivery Time",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.sp,
                                                    color: Colors.black
                                                        .withOpacity(0.50))),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("2 Days",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12.sp,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.62,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child: Text(
                                        "Offer Sent",
                                        style: GoogleFonts.dmSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      )),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.62,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child: Text(
                                        "Withdraw Offer",
                                        style: GoogleFonts.dmSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned.fill(
                                bottom: -25,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '2:00 AM',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                width: MediaQuery.of(context).size.width / 1.5,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,

                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  "Aliquam nec hendrerit nisl, a sceler ",
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Colors.white),
                                ),
                              ),
                              Positioned.fill(
                                bottom: -25,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '2:00 PM',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).size.width / 1.5,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Color(0xffFFF2F2),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                    "Aliquam nec hendrerit nisl, a sceler ",
                                    style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: Colors.black)),
                              ),
                              Positioned.fill(
                                bottom: -25,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '2:00 AM',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                width: MediaQuery.of(context).size.width / 1.5,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  "Aliquam nec hendrerit nisl, a sceler ",
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Colors.white),
                                ),
                              ),
                              Positioned.fill(
                                bottom: -25,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '2:00 PM',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).size.width / 1.5,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Color(0xffFFF2F2),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                    "Aliquam nec hendrerit nisl, a sceler ",
                                    style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: Colors.black)),
                              ),
                              Positioned.fill(
                                bottom: -25,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '2:00 AM',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                width: MediaQuery.of(context).size.width / 1.5,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  "Aliquam nec hendrerit nisl, a sceler ",
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Colors.white),
                                ),
                              ),
                              Positioned.fill(
                                bottom: -25,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '2:00 PM',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        height: 150,
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          ),
          elevation: 10,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Type Mesage Here",
                      prefixIcon: Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                color: Colors.grey, shape: BoxShape.circle),
                            child: Center(
                                child: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 20,
                            ))),
                      )),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.attachment_sharp,
                        color: Colors.grey,
                      ),
                      Text(
                        'Attach Files',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateOffer()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_circle_outline_rounded,
                          color: Colors.grey,
                        ),
                        Text(
                          'Create Order',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
