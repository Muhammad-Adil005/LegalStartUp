import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_start_up/Freelancer/Authentication/registerFreelancer3.dart';

import '../../Widgets/CustomTextFields.dart';
import '../../Widgets/dropDownHours.dart';

class RegisterFreelancer2 extends StatelessWidget {
  const RegisterFreelancer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_rounded)),
                  Text(
                    "Resister as Freelancer",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      Positioned.fill(
                          child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: Theme.of(context).primaryColor
                        ),
                      ))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.transparent,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            height: 20.h,
                            width: 21.w,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                              height: 1,
                              color:  Theme.of(context).primaryColor,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              height: 1.h,
                              color:  Theme.of(context).primaryColor,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            height: 20.h,
                            width: 21.w,
                            decoration: BoxDecoration(
                               color:Theme.of(context).primaryColor,
                                shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                              height: 1.h,
                              color:  Theme.of(context).primaryColor,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              height: 1.h,
                              color: Theme.of(context).primaryColor,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            height: 20.h,
                            width: 21.w,
                            decoration: BoxDecoration(
                              // color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(width: 1)),
                            child: Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                              height: 1.h,
                              color: Colors.transparent,
                            )),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Personal info",style: TextStyle(fontSize: 8.sp,fontWeight: FontWeight.w700),)

                    ,Text("Skills",style: TextStyle(fontSize: 8.sp
                        ,fontWeight: FontWeight.w700),)

                    , Text("Profile Picture",style: TextStyle(fontSize: 8.sp,fontWeight: FontWeight.w700),)

                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Skills",
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 58.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 20.h,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          color:  Theme.of(context).primaryColor.withOpacity(0.41),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Center(
                          child: Text(
                        "UI/UX design",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700, fontSize: 8.sp),
                      )),
                    ),
                    Container(
                      height: 20.sp,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withOpacity(0.41),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Center(
                          child: Text(
                        "Wordpress",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700, fontSize: 8.sp),
                      )),
                    ),
                    Container(
                      height: 20.h,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          color:  Theme.of(context).primaryColor.withOpacity(0.41),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Flutter",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700, fontSize: 8.sp),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFields(
                  hintText: "Working hours",
                  hintColor: Color(0xffACA9A9),
                  leadinIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: dropDownHours(
                        selectedItem: "Working hours",
                      ))),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterFreelancer3()));
                },
                child: Container(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      "Proceed",
                      style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
