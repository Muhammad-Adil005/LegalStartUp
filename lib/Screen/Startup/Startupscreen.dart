import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BuildingStartupscreen.dart';

class Startuppage extends StatefulWidget {
  const Startuppage({Key? key}) : super(key: key);

  @override
  State<Startuppage> createState() => _StartuppageState();
}

class _StartuppageState extends State<Startuppage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.2,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xffBA55D3),
          child: Icon(Icons.currency_exchange),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 0.1,
                      spreadRadius: 1,
                      color: Colors.grey.shade200,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        'Viewing Compaign',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff232323),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.help_outline,
                          color: Color(0xff000000),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: Colors.grey.shade200,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BuildingStartuppage()));
                        },
                        child: Row(
                          children: [
                            Image(image: AssetImage('assets/images/M.png')),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Moto Mobiles',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color(0xff232323),
                                  ),
                                ),
                                Text(
                                  'Mobile Making & Selling Company.',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.33,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Twogirl.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 15, top: 0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width: MediaQuery.of(context).size.width *
                                        0.11,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Color(0xff232323),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.13,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            CupertinoIcons.play_fill,
                                            color: Color(0xff232323),
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 22, left: 23, right: 23),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.077,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1, color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Deal Terms',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff232323),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.09,
                                height:
                                    MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffBA55D3),
                                ),
                                child: Icon(Icons.arrow_forward,
                                    color: Colors.white, size: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam\n venenatis sit amet',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25, left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 0;
                                });
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: index == 0
                                      ? Color(0xffBA55D3)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    'OVERVIEW',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: index == 0
                                          ? Colors.white
                                          : Colors.black38,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 1;
                                });
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: index == 1
                                      ? Color(0xffBA55D3)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    'TEAM',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: index == 1
                                          ? Colors.white
                                          : Colors.black38,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 2;
                                });
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: index == 2
                                      ? Color(0xffBA55D3)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    'UPDATES',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: index == 2
                                          ? Colors.white
                                          : Colors.black38,
                                    ),
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
              Visibility(
                visible: index == 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        'Highlights',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xff232323),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.08,
                            decoration: BoxDecoration(
                              color: Color(0xffBA55D3),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  'Etiam venenatis sit amet risus a bibendum. Integer a nibh',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  'feugiat, congue nunc ac, auctor tortor. Nam luctus libero',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  'sed tortor luctus, sit amet porttitor ex dignissim. Nam vitae',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  'sem tortor. Etiam in risus egestas, ultricies dui nec, tempor',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  ' ante. Vestibulum eu imperdiet velit,',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black38,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.08,
                            decoration: BoxDecoration(
                              color: Color(0xffBA55D3),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  'Etiam venenatis sit amet risus a bibendum. Integer a nibh',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  'feugiat, congue nunc ac, auctor tortor. Nam luctus libero',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  'sed tortor luctus, sit amet porttitor ex dignissim. Nam vitae',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  'sem tortor. Etiam in risus egestas, ultricies dui nec, tempor',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  ' ante. Vestibulum eu imperdiet velit,',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: Colors.black38,
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
              Visibility(
                visible: index == 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        'Team',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xff232323),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/Men1.png'),
                                ),
                                Positioned(
                                  left: 20,
                                  child: Image(
                                    image: AssetImage('assets/images/Men2.png'),
                                  ),
                                ),
                                Positioned(
                                  height: MediaQuery.of(context).size.height *
                                      0.044,
                                  left: 50,
                                  child: Image(
                                    image: AssetImage('assets/images/Men3.png'),
                                  ),
                                ),
                                Positioned(
                                  left: 80,
                                  child: Image(
                                    image: AssetImage('assets/images/Men4.png'),
                                  ),
                                ),
                                Positioned(
                                  left: 100,
                                  child: Image(
                                    image: AssetImage('assets/images/Men5.png'),
                                  ),
                                ),
                                Positioned(
                                  left: 140,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width: MediaQuery.of(context).size.width *
                                        0.16,
                                    decoration: BoxDecoration(
                                        color: Color(0xff232323),
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: Text(
                                        '+5',
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20, left: 0),
                            child: Text(
                              'View Details',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/images/Men1.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Mike Dean',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xff232323),
                                  ),
                                ),
                                Text(
                                  'CEO',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xff232323BF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/images/Men2.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Michael',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xff232323),
                                  ),
                                ),
                                Text(
                                  'Desginer',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xff232323BF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Row(
                        children: [
                          Image(
                            height: MediaQuery.of(context).size.height * 0.05,
                            image: AssetImage('assets/images/Men3.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Peter Mike',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xff232323),
                                  ),
                                ),
                                Text(
                                  'Developer',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xff232323BF),
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
              Visibility(
                visible: index == 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            'Updates',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xff232323),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 10),
                          child: Text(
                            'View All',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 5),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff232323),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 30,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                              color: Color(0xff232323),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(
                                    'Increase in\n Shareholders',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 15),
                                  child: Text(
                                    'Lorem ipsum dolor sit\n amet, consectetur\n adipiscing elit. Etiam\nvenenatis sit amet',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 5),
                                  child: Text(
                                    'Show more',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff13B887),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 25.0, // soften the shadow
                                  spreadRadius: 5.0, //extend the shadow
                                  offset: Offset(
                                    15.0, // Move to right 10  horizontally
                                    15.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(
                                    'Increase in\n Shareholders',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 15),
                                  child: Text(
                                    'Lorem ipsum dolor sit\n amet, consectetur\n adipiscing elit. Etiam\nvenenatis sit amet',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 5),
                                  child: Text(
                                    'Show more',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff13B887),
                                    ),
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
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
 Container(
                      width: MediaQuery.of(context).size.width * 0.06,
                      height: MediaQuery.of(context).size.height * 0.03,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        border: Border.all(
                          width: 3,
                          color: Color(0xff232323),
                        ),
                      ),
                      child: Text(
                        '?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff232323),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
 */

/*
Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 0.1,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
 */
