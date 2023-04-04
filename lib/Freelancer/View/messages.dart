import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chatting.dart';

class Messages extends StatelessWidget {
  Messages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          elevation: 3.0,
          title: Center(
            child: Text(
              textAlign: TextAlign.center,
              "Messages",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 20.sp
              ),
            ),
          ),
          leading: InkWell(

              onTap: (){Navigator.pop(context);},

              child: Icon(Icons.search, color: Colors.black,)),
          actions: [
            // Expanded(child: Container()),
            Container(
                width: 40.w,
                child: ImageIcon(
                  AssetImage('assets/images/circle4364.png'),
                  color: Colors.black,
                )),
            SizedBox(
              width: 20.w,
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Chatting()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.08,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
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
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                            decoration: BoxDecoration(
                                               color: Theme.of(context).primaryColor,shape: BoxShape.circle),
                                          ),
                                        ))
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "David",
                                          style: GoogleFonts.dmSans(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit a",
                                          style: GoogleFonts.dmSans(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: Color(0xff232323)
                                                  .withOpacity(0.50)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 20.h,
                                          width: 20.h,
                                          decoration: BoxDecoration(
                                              color: Color(0xff38079F),
                                              shape: BoxShape.circle),
                                          child: Center(
                                              child: Text(
                                            "1",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          )),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "11 AM",
                                          style: GoogleFonts.dmSans(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp,
                                              color: Color(0xff232323)
                                                  .withOpacity(0.50)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
