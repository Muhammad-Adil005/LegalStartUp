import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_start_up/Freelancer/Authentication/registerFreelancer2.dart';

import '../../Widgets/CustomTextFields.dart';
import '../../Widgets/dropDown.dart';

class RegisterFreelancer1 extends StatelessWidget {
  const RegisterFreelancer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    final sw = MediaQuery.of(context).size.width;
    print(sh);
    print(sw);
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
                  Icon(Icons.arrow_back_ios_rounded),
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
                          backgroundColor:  Theme.of(context).primaryColor,
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
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 1,
                          color:  Theme.of(context).primaryColor,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            height: 20,
                            width: 21,
                            decoration: BoxDecoration(
                                // color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(width: 1)),
                            child: Center(
                              child: Text(
                                "2",
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
                          height: 1,
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
                          height: 1,
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
                          height: 1,
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
                    Text("Personal info",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w700),)

                    ,Text("Skills",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w700),)

                   , Text("Profile Picture",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w700),)

                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter Personal Info",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              CustomTextFields(hintText: "Name", hintColor: Color(0xffACA9A9)),
              CustomTextFields(hintText: "Email", hintColor: Color(0xffACA9A9)),
              CustomTextFields(
                  hintText: "UserName", hintColor: Color(0xffACA9A9)),
              CustomTextFields(
                  hintText: "Password", hintColor: Color(0xffACA9A9)),
              CustomTextFields(
                  hintText: "Phone no", hintColor: Color(0xffACA9A9)),
              CustomTextFields(
                  hintText: "Gender",
                  hintColor: Color(0xffACA9A9),
                  leadinIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: dropDown(
                        selectedItem: "Gender",
                      ))),
              CustomTextFields(
                  hintText: "Enter Bio", hintColor: Color(0xffACA9A9)),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterFreelancer2()));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color:Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Proceed",
                      style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
