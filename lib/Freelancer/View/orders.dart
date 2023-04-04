import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  //background color of box
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 5, // soften the shadow
                    spreadRadius: 5, //extend the shadow
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap:(){Navigator.pop(context);},
                              child: Icon(Icons.arrow_back_ios_rounded)),
                          Text(
                            "Manage Jobs",
                            style: GoogleFonts.dmSans(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          ImageIcon(
                            AssetImage("assets/images/circle4364.png"),
                            size: 17.sp,
                          )
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  SizedBox(height: 30.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Container(
                        height: 31.h,
                        width: 112.w,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Active",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.03,
                              width: MediaQuery.of(context).size.width * 0.045,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                              child: Center(
                                child: Text(
                                  "7",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                    color:Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.042,
                        width: MediaQuery.of(context).size.width * .29,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "New",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 16.h,
                              width: 16.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color:Theme.of(context).primaryColor),
                              child: Center(
                                child: Text(
                                  "7",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color:Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.042,
                        width: MediaQuery.of(context).size.width * .29,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Completed",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  Row(
                      children: [
                        Text("Due in next few days",
                          style: GoogleFonts.dmSans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),)
                      ],),
                  SizedBox(height: 5,),

                  Container(
                    height: MediaQuery.of(context).size.height*0.39,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Container(
                            height:60.h,
                            width: 360.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                //background color of box
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 5, // soften the shadow
                                  spreadRadius: 1, //extend the shadow
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context).size.height * 0.05,
                                              width: MediaQuery.of(context).size.width * 0.1,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/img_ellipse5.png"))),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Phil Jones",
                                                  style: GoogleFonts.dmSans(
                                                      fontSize: 14.sp,
                                                      fontWeight: FontWeight.w700),
                                                ),
                                                Text("Logo Designing",
                                                    style: GoogleFonts.dmSans(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 10.sp,
                                                        color: Color(0xff232323).withOpacity(0.5))),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(children: [
                                              ImageIcon(AssetImage("assets/images/Vector (4).png"),color: Colors.yellow,),
                                              Text(
                                                "\$50",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10.sp,
                                                    color: Color(0xff232323).withOpacity(0.35)),
                                              ),
                                            ],),
                                            Row(children: [
                                              Text(
                                                "Delievery in",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10.sp,
                                                    color: Color(0xff232323).withOpacity(0.35)),
                                              ),
                                              Text(
                                                " 2 ",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 10.sp,
                                                    color: Color(0xff232323)),
                                              ),
                                              Text(
                                                "Days",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10.sp,
                                                    color: Color(0xff232323).withOpacity(0.35)),
                                              )
                                            ],)
                                          ],
                                        )
                                      ],
                                    ),

                                  ]),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Text("Due this days",
                          style: GoogleFonts.dmSans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),)
                      ],),
                  ),
                  SizedBox(height: 5,),

                  Container(
                    height: MediaQuery.of(context).size.height*0.45,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Container(
                            height:60.h,
                            width: 360.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                //background color of box
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 5, // soften the shadow
                                  spreadRadius: 1, //extend the shadow
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context).size.height * 0.05,
                                              width: MediaQuery.of(context).size.width * 0.1,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/img_ellipse5.png"))),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Phil Jones",
                                                  style: GoogleFonts.dmSans(
                                                      fontSize: 14.sp,
                                                      fontWeight: FontWeight.w700),
                                                ),
                                                Text("Logo Designing",
                                                    style: GoogleFonts.dmSans(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 10.sp,
                                                        color: Color(0xff232323).withOpacity(0.5))),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(children: [
                                              ImageIcon(AssetImage("assets/images/Vector (4).png"),color: Colors.yellow,),
                                              Text(
                                                "\$50",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10.sp,
                                                    color: Color(0xff232323).withOpacity(0.35)),
                                              ),
                                            ],),
                                            Row(children: [
                                              Text(
                                                "Delievery in",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10.sp,
                                                    color: Color(0xff232323).withOpacity(0.35)),
                                              ),
                                              Text(
                                                " 2 ",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 10.sp,
                                                    color: Color(0xff232323)),
                                              ),
                                              Text(
                                                "Days",
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10.sp,
                                                    color: Color(0xff232323).withOpacity(0.35)),
                                              )
                                            ],)
                                          ],
                                        )
                                      ],
                                    ),

                                  ]),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
