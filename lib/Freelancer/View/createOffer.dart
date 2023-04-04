import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/dropDownDeliveryTime.dart';

class CreateOffer extends StatelessWidget {
  const CreateOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios_rounded)),
                        Text(
                          "Create Offer",
                          style: GoogleFonts.dmSans(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        ImageIcon(AssetImage("assets/images/circle4364.png"))
                      ],
                    )),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height:42.h,
                            width: 155.w,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              "One time job",
                              style: GoogleFonts.dmSans(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )),
                          ),
                          Container(
                            height:42.h,
                            width: 155.w,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,

                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              "Monthly job",
                              style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Job Title",
                            style: GoogleFonts.dmSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.035,
                            width: MediaQuery.of(context).size.width * 0.09,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,

                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 15.sp,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Create an app UI/UX for my app.",
                            style: GoogleFonts.dmSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.50)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Describe your offer",
                            style: GoogleFonts.dmSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400, fontSize: 12),
                        cursorColor: Colors.grey,
                        maxLines: 6,
                        decoration: InputDecoration(
                          hintText: "Enter your Description",
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Choose Rate",
                            style: GoogleFonts.dmSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Price",
                              style: GoogleFonts.dmSans(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Row(
                              children: [
                                Text(
                                  "US\$",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow: [
                                      //background color of box
                                      BoxShadow(
                                        color: Colors.grey.shade200,
                                        blurRadius: 5, // soften the shadow
                                        spreadRadius: 1, //extend the shadow
                                      )
                                    ],
                                  ),
                                  child: TextFormField(
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: Colors.white,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                            width: 1.w,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Time",
                              style: GoogleFonts.dmSans(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 58.h,
                                    width: MediaQuery.of(context).size.width *
                                        0.18,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xfffafafa),

                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                          suffixIcon: dropDownDeliveryTime(
                                        selectedItem: "1Day",
                                      )),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 45.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Create",
                              style: GoogleFonts.dmSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
