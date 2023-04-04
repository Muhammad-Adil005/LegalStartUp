import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_start_up/Screen/Home/home.dart';
import 'package:legal_start_up/Widgets/budgetneededdropdown.dart';
import 'package:legal_start_up/Widgets/categoryDropDown.dart';

import '../ViewingStartup/ViewingStartupscreen.dart';

class BuildingStartuppage extends StatefulWidget {
  const BuildingStartuppage({Key? key}) : super(key: key);

  @override
  State<BuildingStartuppage> createState() => _BuildingStartuppageState();
}

class _BuildingStartuppageState extends State<BuildingStartuppage> {
  int index = 1;
  int visible = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Color(0xff000000),
                        size: 30,
                      ),
                    ),
                    Text(
                      'Building Startup',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff232323),
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff232323),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          top: 20,
                          child: Image(
                            image: AssetImage('assets/images/dot.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == 1
                                  ? Color(0xffBA55D3)
                                  : Color(0xffBA55D3),
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Idea',
                          style: GoogleFonts.dmSans(
                            color: Color(0xff232323),
                            fontWeight: FontWeight.w700,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xffBA55D3),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: index >= 2
                                    ? Border.all(
                                        width: 0,
                                        color: Colors.white,
                                      )
                                    : Border.all(
                                        width: 1,
                                        color: Color(0xff232323),
                                      ),
                                color: index >= 2
                                    ? Color(0xffBA55D3)
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: index >= 2
                                        ? Colors.white
                                        : Color(0xff232323),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Team',
                            style: GoogleFonts.dmSans(
                              color: Color(0xff232323),
                              fontWeight: FontWeight.w700,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xffBA55D3),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 3;
                            });
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: index >= 3
                                  ? Border.all(
                                      width: 0,
                                      color: Colors.white,
                                    )
                                  : Border.all(
                                      width: 1,
                                      color: Color(0xff232323),
                                    ),
                              color:
                                  index >= 3 ? Color(0xffBA55D3) : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                '3',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: index >= 3
                                      ? Colors.white
                                      : Color(0xff232323),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Prototyping',
                          style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xffBA55D3),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 4;
                            });
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: index >= 4
                                  ? Border.all(
                                      width: 0,
                                      color: Colors.white,
                                    )
                                  : Border.all(
                                      width: 1,
                                      color: Color(0xff232323),
                                    ),
                              color:
                                  index >= 4 ? Color(0xffBA55D3) : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                '4',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: index >= 4
                                      ? Colors.white
                                      : Color(0xff232323),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Pitch Deck',
                          style: GoogleFonts.dmSans(
                            color: Color(0xff232323),
                            fontWeight: FontWeight.w700,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xffBA55D3),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 5;
                            });
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: index == 5
                                  ? Border.all(
                                      width: 0,
                                      color: Colors.white,
                                    )
                                  : Border.all(
                                      width: 1,
                                      color: Color(0xff232323),
                                    ),
                              color:
                                  index == 5 ? Color(0xffBA55D3) : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                '5',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: index >= 5
                                      ? Colors.white
                                      : Color(0xff232323),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Fund Raising',
                          style: GoogleFonts.dmSans(
                            color: Color(0xff232323),
                            fontWeight: FontWeight.w700,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: index == 1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            'Enter the details',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff232323),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 25,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Project Tile',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ExpansionTile(
                            collapsedTextColor: Color(0xffACA9A9),
                            textColor: Color(0xffACA9A9),
                            children: [
                              SizedBox(
                                height: 239.h,
                              )
                            ],
                            trailing: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.help_outline_outlined,
                                size: 20,
                                color: Colors.black38,
                              ),
                            ),
                            backgroundColor: Color(0xffEEEEEE),
                            collapsedBackgroundColor: Color(0xffEEEEEE),
                            title: Text(
                              "Problem Statement",
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(
                                      color: Color(0xffACA9A9), fontSize: 14)),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ExpansionTile(
                            collapsedTextColor: Color(0xffACA9A9),
                            textColor: Color(0xffACA9A9),
                            children: [
                              SizedBox(
                                height: 239.h,
                              )
                            ],
                            trailing: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.help_outline_outlined,
                                size: 20,
                                color: Colors.black38,
                              ),
                            ),
                            backgroundColor: Color(0xffEEEEEE),
                            collapsedBackgroundColor: Color(0xffEEEEEE),
                            title: Text(
                              "Impact Statement",
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(
                                      color: Color(0xffACA9A9), fontSize: 14)),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ExpansionTile(
                            collapsedTextColor: Color(0xffACA9A9),
                            textColor: Color(0xffACA9A9),
                            children: [
                              SizedBox(
                                height: 239.h,
                              )
                            ],
                            trailing: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.help_outline_outlined,
                                size: 20,
                                color: Colors.black38,
                              ),
                            ),
                            backgroundColor: Color(0xffEEEEEE),
                            collapsedBackgroundColor: Color(0xffEEEEEE),
                            title: Text(
                              "Benchmarking",
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(
                                      color: Color(0xffACA9A9), fontSize: 14)),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ExpansionTile(
                            collapsedTextColor: Color(0xffACA9A9),
                            textColor: Color(0xffACA9A9),
                            children: [
                              SizedBox(
                                height: 239.h,
                              )
                            ],
                            trailing: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.help_outline_outlined,
                                size: 20,
                                color: Colors.black38,
                              ),
                            ),
                            backgroundColor: Color(0xffEEEEEE),
                            collapsedBackgroundColor: Color(0xffEEEEEE),
                            title: Text(
                              "Tell a story to attract investors",
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(
                                      color: Color(0xffACA9A9), fontSize: 14)),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon:
                              CategoryDropDown(selectedItem: "Category"),
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Category',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Location',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: budgetNeededDropdown(
                              selectedItem: "Budget Needed"),
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Budget Needed',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.88,
                        decoration: BoxDecoration(
                          color: Color(0xffBA55D3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Proceed',
                            style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Visibility(
                visible: index == 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            'Enter the details',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff232323),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 25,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Skills Required',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Any Constrainst on Location?',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 20),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            index = 3;
                          });
                        },
                        child: Container(
                            height: 58,
                            width: 343,
                            decoration: BoxDecoration(
                              color: Color(0xffBA55D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text("Proceed",
                                    style: GoogleFonts.dmSans(
                                        color: Colors.white)))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20, right: 25, top: 20, bottom: 20),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff232323),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff232323),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Skip',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: index == 3,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            'Upload info',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff232323),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 10),
                      child: Container(
                        width: 344,
                        height: 278,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.1,
                              spreadRadius: 0.1,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.1, 0.1),
                              blurRadius: 10,
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                'Enter Description (Optional)',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 140),
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade200,
                                            offset: const Offset(0.1, 0.1),
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            //textAlign: TextAlign.center,
                                            'Select File',
                                            style: GoogleFonts.dmSans(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff2323235E),
                                            ),
                                          ),
                                          Image(
                                            image: AssetImage(
                                                'assets/images/gallery.png'),
                                            color: Color(0xffBA55D3),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xff232323),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xff23232380),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  hintText: 'Add Photo / Videos',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 4;
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.88,
                        decoration: BoxDecoration(
                          color: Color(0xffBA55D3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Upload',
                            style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 20),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff232323),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff232323),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Proceed',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20, right: 25, top: 20, bottom: 20),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff232323),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff232323),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Skip',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: index == 4,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20, left: 10, right: 10, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                visible = 1;
                              });
                            },
                            child: Container(
                              height: 24.h,
                              width: 104.w,
                              decoration: visible == 1
                                  ? BoxDecoration(
                                      color: Color(0xffBA55D3),
                                      borderRadius: BorderRadius.circular(5))
                                  : BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(width: 1),
                                    ),
                              child: Center(
                                  child: Text("Overview",
                                      style: visible == 1
                                          ? TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white)
                                          : TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black))),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                visible = 2;
                              });
                            },
                            child: Container(
                              height: 24.h,
                              width: 104.w,
                              decoration: visible == 2
                                  ? BoxDecoration(
                                      color: Color(0xffBA55D3),
                                      borderRadius: BorderRadius.circular(5))
                                  : BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(width: 1),
                                    ),
                              child: Center(
                                  child: Text("Teams",
                                      style: visible == 2
                                          ? TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white)
                                          : TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black))),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                visible = 3;
                              });
                            },
                            child: Container(
                              height: 24.h,
                              width: 104.w,
                              decoration: visible == 3
                                  ? BoxDecoration(
                                      color: Color(0xffBA55D3),
                                      borderRadius: BorderRadius.circular(5))
                                  : BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(width: 1),
                                    ),
                              child: Center(
                                  child: Text("Terms",
                                      style: visible == 3
                                          ? TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white)
                                          : TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: visible == 1,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                child: ExpansionTile(
                                  collapsedTextColor: Colors.black,
                                  textColor: Color(0xffACA9A9),
                                  title: Text(
                                    'Problem Statement',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Icon(Icons.keyboard_arrow_down),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 20),
                                                child: Text(
                                                  'Problem Statement',
                                                  style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff232323),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.33,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    //color: Color(0xff232323),
                                                    border: Border.all(
                                                      width: 1,
                                                      color: Color(0xff232323),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    //  crossAxisAlignment: CrossAxisAlignment.spaceAround,
                                                    children: [
                                                      Text(
                                                        'Create a context ensure audience realize the problem; if\n not, the rest of your pitch is less meaningful',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned.fill(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons.radio_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons
                                                            .browse_gallery_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons.radio_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 5,
                                                              right: 10),
                                                      child: Icon(
                                                        Icons
                                                            .menu_book_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 20),
                                                child: Text(
                                                  'Proof',
                                                  style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff232323),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.33,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    //color: Color(0xff232323),
                                                    border: Border.all(
                                                      width: 1,
                                                      color: Color(0xff232323),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    //  crossAxisAlignment: CrossAxisAlignment.spaceAround,
                                                    children: [
                                                      Text(
                                                        'Create a context ensure audience realize the problem; if\n not, the rest of your pitch is less meaningful',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned.fill(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons.radio_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons
                                                            .browse_gallery_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons.radio_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 5,
                                                              right: 10),
                                                      child: Icon(
                                                        Icons
                                                            .menu_book_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          // Padding(
                                          //   padding:
                                          //       EdgeInsets.only(left: 20, right: 25, top: 20),
                                          //   child: TextField(
                                          //     textAlign: TextAlign.start,
                                          //     decoration: InputDecoration(
                                          //       suffixIcon: Container(
                                          //         margin: EdgeInsets.all(10),
                                          //         height: MediaQuery.of(context).size.height *
                                          //             0.001,
                                          //         width: MediaQuery.of(context).size.width *
                                          //             0.001,
                                          //         decoration: BoxDecoration(
                                          //           shape: BoxShape.circle,
                                          //           color: Color(0xff13B887),
                                          //         ),
                                          //         child: Icon(Icons.done,
                                          //             color: Colors.white, size: 20),
                                          //       ),
                                          //       hintStyle: GoogleFonts.dmSans(
                                          //         fontWeight: FontWeight.w500,
                                          //         fontSize: 14,
                                          //         color: Color(0xff232323),
                                          //       ),
                                          //       fillColor: Colors.white,
                                          //       filled: true,
                                          //       border: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       enabledBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide(
                                          //           width: 1,
                                          //           color: Color(0xff232323),
                                          //         ),
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       focusedBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       hintText: 'Problem Statement',
                                          //     ),
                                          //   ),
                                          // ),
                                          // Padding(
                                          //   padding:
                                          //       EdgeInsets.only(left: 20, right: 25, top: 20),
                                          //   child: TextField(
                                          //     textAlign: TextAlign.start,
                                          //     decoration: InputDecoration(
                                          //       suffixIcon: Icon(
                                          //         Icons.arrow_forward_ios,
                                          //         color: Color(0xff232323),
                                          //         size: 20,
                                          //       ),
                                          //       hintStyle: GoogleFonts.dmSans(
                                          //         fontWeight: FontWeight.w500,
                                          //         fontSize: 14,
                                          //         color: Color(0xff232323),
                                          //       ),
                                          //       fillColor: Colors.white,
                                          //       filled: true,
                                          //       border: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       enabledBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide(
                                          //           width: 1,
                                          //           color: Color(0xff232323),
                                          //         ),
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       focusedBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       hintText: 'Solution',
                                          //     ),
                                          //   ),
                                          // ),
                                          // Padding(
                                          //   padding:
                                          //       EdgeInsets.only(left: 20, right: 25, top: 20),
                                          //   child: TextField(
                                          //     textAlign: TextAlign.start,
                                          //     decoration: InputDecoration(
                                          //       suffixIcon: Icon(
                                          //         Icons.arrow_forward_ios,
                                          //         color: Color(0xff232323),
                                          //         size: 20,
                                          //       ),
                                          //       hintStyle: GoogleFonts.dmSans(
                                          //         fontWeight: FontWeight.w500,
                                          //         fontSize: 14,
                                          //         color: Color(0xff232323),
                                          //       ),
                                          //       fillColor: Colors.white,
                                          //       filled: true,
                                          //       border: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       enabledBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide(
                                          //           width: 1,
                                          //           color: Color(0xff232323),
                                          //         ),
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       focusedBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       hintText: 'Business Plan',
                                          //     ),
                                          //   ),
                                          // ),
                                          // Padding(
                                          //   padding:
                                          //       EdgeInsets.only(left: 20, right: 25, top: 20),
                                          //   child: TextField(
                                          //     textAlign: TextAlign.start,
                                          //     decoration: InputDecoration(
                                          //       suffixIcon: Icon(
                                          //         Icons.arrow_forward_ios,
                                          //         color: Color(0xff232323),
                                          //         size: 20,
                                          //       ),
                                          //       hintStyle: GoogleFonts.dmSans(
                                          //         fontWeight: FontWeight.w500,
                                          //         fontSize: 14,
                                          //         color: Color(0xff232323),
                                          //       ),
                                          //       fillColor: Colors.white,
                                          //       filled: true,
                                          //       border: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       enabledBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide(
                                          //           width: 1,
                                          //           color: Color(0xff232323),
                                          //         ),
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       focusedBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       hintText: 'Competition',
                                          //     ),
                                          //   ),
                                          // ),
                                          // Padding(
                                          //   padding:
                                          //       EdgeInsets.only(left: 20, right: 25, top: 20),
                                          //   child: TextField(
                                          //     textAlign: TextAlign.start,
                                          //     decoration: InputDecoration(
                                          //       suffixIcon: Icon(
                                          //         Icons.arrow_forward_ios,
                                          //         color: Color(0xff232323),
                                          //         size: 20,
                                          //       ),
                                          //       hintStyle: GoogleFonts.dmSans(
                                          //         fontWeight: FontWeight.w500,
                                          //         fontSize: 14,
                                          //         color: Color(0xff232323),
                                          //       ),
                                          //       fillColor: Colors.white,
                                          //       filled: true,
                                          //       border: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       enabledBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide(
                                          //           width: 1,
                                          //           color: Color(0xff232323),
                                          //         ),
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       focusedBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       hintText: 'Journey/Traction',
                                          //     ),
                                          //   ),
                                          // ),
                                          // Padding(
                                          //   padding:
                                          //       EdgeInsets.only(left: 20, right: 25, top: 20),
                                          //   child: TextField(
                                          //     textAlign: TextAlign.start,
                                          //     decoration: InputDecoration(
                                          //       suffixIcon: Icon(
                                          //         Icons.arrow_forward_ios,
                                          //         color: Color(0xff232323),
                                          //         size: 20,
                                          //       ),
                                          //       hintStyle: GoogleFonts.dmSans(
                                          //         fontWeight: FontWeight.w500,
                                          //         fontSize: 14,
                                          //         color: Color(0xff232323),
                                          //       ),
                                          //       fillColor: Colors.white,
                                          //       filled: true,
                                          //       border: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       enabledBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide(
                                          //           width: 1,
                                          //           color: Color(0xff232323),
                                          //         ),
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       focusedBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       hintText: 'Appendencies',
                                          //     ),
                                          //   ),
                                          // ),
                                          // Padding(
                                          //   padding:
                                          //       EdgeInsets.only(left: 20, right: 25, top: 20),
                                          //   child: TextField(
                                          //     textAlign: TextAlign.start,
                                          //     decoration: InputDecoration(
                                          //       suffixIcon: Container(
                                          //         margin: EdgeInsets.all(10),
                                          //         height: MediaQuery.of(context).size.height *
                                          //             0.001,
                                          //         width: MediaQuery.of(context).size.width *
                                          //             0.001,
                                          //         decoration: BoxDecoration(
                                          //           shape: BoxShape.circle,
                                          //           color: Color(0xff13B887),
                                          //         ),
                                          //         child: Icon(Icons.done,
                                          //             color: Colors.white, size: 20),
                                          //       ),
                                          //       hintStyle: GoogleFonts.dmSans(
                                          //         fontWeight: FontWeight.w500,
                                          //         fontSize: 14,
                                          //         color: Color(0xff232323),
                                          //       ),
                                          //       fillColor: Colors.white,
                                          //       filled: true,
                                          //       border: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       enabledBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide(
                                          //           width: 1,
                                          //           color: Color(0xff232323),
                                          //         ),
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       focusedBorder: OutlineInputBorder(
                                          //         borderSide: BorderSide.none,
                                          //         borderRadius: BorderRadius.all(
                                          //           Radius.circular(10),
                                          //         ),
                                          //       ),
                                          //       hintText: 'Problem Statement',
                                          //     ),
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                child: ExpansionTile(
                                  collapsedTextColor: Colors.black,
                                  textColor: Color(0xffACA9A9),
                                  title: Text(
                                    'Solutions',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Icon(Icons.keyboard_arrow_down),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 20),
                                                child: Text(
                                                  'Your Solution',
                                                  style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff232323),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.33,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    //color: Color(0xff232323),
                                                    border: Border.all(
                                                      width: 1,
                                                      color: Color(0xff232323),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    //  crossAxisAlignment: CrossAxisAlignment.spaceAround,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 15),
                                                        child: Text(
                                                          'Explain your [potential] solution what are you building \nand how it works.',
                                                          style: GoogleFonts
                                                              .dmSans(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black38,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Text(
                                                        'Identify where are you adding the most value for \ncustomers (i.e how it gives customers what they want).',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned.fill(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons.radio_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons
                                                            .browse_gallery_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons.radio_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 5,
                                                              right: 10),
                                                      child: Icon(
                                                        Icons
                                                            .menu_book_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 20),
                                                child: Text(
                                                  'What are you building?',
                                                  style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff232323),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.33,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    //color: Color(0xff232323),
                                                    border: Border.all(
                                                      width: 1,
                                                      color: Color(0xff232323),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    //  crossAxisAlignment: CrossAxisAlignment.spaceAround,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 15),
                                                        child: Text(
                                                          'Prove your ‘problem Statement’ with research, statistics\nor quotes.',
                                                          style: GoogleFonts
                                                              .dmSans(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black38,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 15),
                                                      Text(
                                                        'Identify where are you adding the most value for \ncustomers (i.e how it gives customers what they want).',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned.fill(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons.radio_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons
                                                            .browse_gallery_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Icon(
                                                        Icons.radio_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 5,
                                                              right: 10),
                                                      child: Icon(
                                                        Icons
                                                            .menu_book_outlined,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                child: ExpansionTile(
                                  collapsedTextColor: Colors.black,
                                  textColor: Color(0xffACA9A9),
                                  title: Text(
                                    'Business Plan',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Icon(Icons.keyboard_arrow_down),
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 20),
                                              child: Text(
                                                'Block 1',
                                                style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                  color: Color(0xff232323),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12),
                                              child: Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  //color: Color(0xff232323),
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Color(0xff232323),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  //  crossAxisAlignment: CrossAxisAlignment.spaceAround,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15,
                                                              left: 10),
                                                      child: Text(
                                                        'Heading',
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 20,
                                                          color:
                                                              Color(0xff232323),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10,
                                                            bottom: 5),
                                                    child: Icon(
                                                      Icons.radio_outlined,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10,
                                                            bottom: 5),
                                                    child: Icon(
                                                      Icons
                                                          .browse_gallery_outlined,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10,
                                                            bottom: 5),
                                                    child: Icon(
                                                      Icons.radio_outlined,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 5,
                                                            right: 10),
                                                    child: Icon(
                                                      Icons.menu_book_outlined,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ],
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
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                child: ExpansionTile(
                                  collapsedTextColor: Colors.black,
                                  textColor: Color(0xffACA9A9),
                                  title: Text(
                                    'Competition',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Icon(Icons.keyboard_arrow_down),
                                  children: [
                                    Column(
                                      children: [],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                child: ExpansionTile(
                                  collapsedTextColor: Colors.black,
                                  textColor: Color(0xffACA9A9),
                                  title: Text(
                                    'Journey/Traction',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Icon(Icons.keyboard_arrow_down),
                                  children: [
                                    Column(
                                      children: [],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                child: ExpansionTile(
                                  collapsedTextColor: Colors.black,
                                  textColor: Color(0xffACA9A9),
                                  title: Text(
                                    'Appendencies',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Icon(Icons.keyboard_arrow_down),
                                  children: [
                                    Column(
                                      children: [],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    //color: Color(0xff232323),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 3,
                                      color: Color(0xff232323),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xff232323),
                                    size: 40,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Add block',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Block 1',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Color(0xff232323),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    //color: Color(0xff232323),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xff232323),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    //  crossAxisAlignment: CrossAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 10),
                                        child: Text(
                                          'Heading',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                            color: Color(0xff232323),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Suspendisse viverra ligula vitae varius sodales. Duis\n ultrices condimentum dui a laoreet. Aliquam ut nisi in\n urna blandit convallis a id quam. Proin et convallis purus.\n In lacinia diam ut est tempor, nec mollis elit consectetur.\n Phasellus scelerisque est et accumsan commodo. Nam\n consequat eros sed cursus vulputate.',
                                            style: GoogleFonts.dmSans(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                              color: Colors.black38,
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 10),
                                        child: Image(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.2,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.7,
                                          image: AssetImage(
                                              'assets/images/meeting.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, bottom: 5),
                                      child: Icon(
                                        Icons.radio_outlined,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, bottom: 5),
                                      child: Icon(
                                        Icons.browse_gallery_outlined,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, bottom: 5),
                                      child: Icon(
                                        Icons.radio_outlined,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 5, right: 10),
                                      child: Icon(
                                        Icons.menu_book_outlined,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                index = 5;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.88,
                                decoration: BoxDecoration(
                                  color: Color(0xffBA55D3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Proceed',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   children: [
                          //     Padding(
                          //       padding: const EdgeInsets.all(20),
                          //       child: DottedBorder(
                          //         borderType: BorderType.RRect,
                          //         radius: Radius.circular(15),
                          //         child: Container(
                          //             height:
                          //             MediaQuery.of(context).size.height * 0.17,
                          //             width:
                          //             MediaQuery.of(context).size.height * 0.15,
                          //             decoration: BoxDecoration(),
                          //             child: Image(
                          //               image: AssetImage(
                          //                   'assets/images/personplus.png'),
                          //             )),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(height: 60),
                          // Container(
                          //   height: MediaQuery.of(context).size.height * 0.08,
                          //   width: MediaQuery.of(context).size.width * 0.88,
                          //   decoration: BoxDecoration(
                          //     color: Color(0xff13B887),
                          //     borderRadius: BorderRadius.circular(10),
                          //   ),
                          //   child: Center(
                          //     child: Text(
                          //       'Proceed',
                          //       style: GoogleFonts.dmSans(
                          //         fontSize: 16,
                          //         fontWeight: FontWeight.w500,
                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: visible == 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(15),
                                  child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.17,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      decoration: BoxDecoration(),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/personplus.png'),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          InkWell(
                            onTap: () {
                              setState(() {
                                index = 5;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.88,
                                decoration: BoxDecoration(
                                  color: Color(0xffBA55D3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Proceed',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: index == 5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            'Add Image/Video & Description',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff232323),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 10),
                      child: Container(
                        width: 344,
                        height: 278,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.1,
                              spreadRadius: 0.1,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.1, 0.1),
                              blurRadius: 10,
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                'Enter Description',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 140),
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade200,
                                            offset: const Offset(0.1, 0.1),
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            //textAlign: TextAlign.center,
                                            'Select File',
                                            style: GoogleFonts.dmSans(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff2323235E),
                                            ),
                                          ),
                                          Image(
                                            image: AssetImage(
                                                'assets/images/gallery.png'),
                                            color: Color(0xffBA55D3),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xff232323),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xff23232380),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  hintText: 'Add Photo / Videos',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.88,
                        decoration: BoxDecoration(
                          color: Color(0xffBA55D3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Upload',
                            style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Enter account details',
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff232323),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'First Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Last Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.arrow_drop_down_sharp,
                              size: 40, color: Color(0xffACA9A9)),
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Country',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.arrow_drop_down_sharp,
                              size: 40, color: Color(0xffACA9A9)),
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'City',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Address',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Postel Code',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Phone No',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Account No',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'CVC',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Expiry Date',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Enter Funds Details',
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff232323),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.money_dollar,
                              color: Color(0xff232323), size: 20),
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Minimum Investment',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.money_dollar,
                              color: Color(0xff232323), size: 20),
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Maximum Investment',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.money_dollar,
                              color: Color(0xff232323), size: 20),
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Price Per Share',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.money_dollar,
                              color: Color(0xff232323), size: 20),
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Valuation',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.money_dollar,
                              color: Color(0xff232323), size: 20),
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Offering Max',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 25, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.arrow_drop_down_sharp,
                            size: 40,
                            color: Color(0xffACA9A9),
                          ),
                          hintStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffACA9A9),
                          ),
                          fillColor: Color(0xffEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Equity Type',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.88,
                        decoration: BoxDecoration(
                          color: Color(0xffBA55D3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Proceed',
                            style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Textfield({
  required IconData icon,
  required String text,
}) {
  return Padding(
    padding: EdgeInsets.only(left: 20, right: 25),
    child: TextField(
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        suffixIcon: Icon(
          icon,
          color: Color(0xff232323),
          size: 20,
        ),
        hintStyle: GoogleFonts.dmSans(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xff232323),
        ),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color(0xff232323),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color(0xff232323),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color(0xff232323),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintText: text,
      ),
    ),
  );
}
