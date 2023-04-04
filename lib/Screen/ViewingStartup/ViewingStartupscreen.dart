import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewingStartuppage extends StatefulWidget {
  const ViewingStartuppage({Key? key}) : super(key: key);

  @override
  State<ViewingStartuppage> createState() => _ViewingStartuppageState();
}

class _ViewingStartuppageState extends State<ViewingStartuppage> {
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
          backgroundColor: Color(0xff13B887),
          child: Icon(Icons.currency_exchange),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.11,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.arrow_back_ios_outlined,
                        color: Colors.black, size: 20),
                    Text(
                      'Viewing Compaign',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff232323),
                      ),
                    ),
                    Icon(Icons.help_outline),
                  ],
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
                    bottomLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
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
                            Container(
                              margin: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width * 0.09,
                              height: MediaQuery.of(context).size.height * 0.09,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffBA55D3),
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 20,
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
                    Container(
                      margin: EdgeInsets.all(12),
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Color(0xffBA55D3),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              'Overview',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down,
                              color: Colors.white, size: 35)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
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
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.07,
                            decoration: BoxDecoration(
                              color: Color(0xffBA55D3),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.done,
                                color: Colors.white, size: 15)),
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
                ],
              ),
              Column(
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
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.07,
                            decoration: BoxDecoration(
                              color: Color(0xffBA55D3),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.done,
                                color: Colors.white, size: 15)),
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
