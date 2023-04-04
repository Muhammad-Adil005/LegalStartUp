import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Overviewfullscreenpage extends StatefulWidget {
  const Overviewfullscreenpage({Key? key}) : super(key: key);

  @override
  State<Overviewfullscreenpage> createState() => _OverviewfullscreenpageState();
}

class _OverviewfullscreenpageState extends State<Overviewfullscreenpage> {
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
                height: MediaQuery.of(context).size.height * 0.09,
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
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        //margin: EdgeInsets.all(12),
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.98,
                        decoration: BoxDecoration(
                          color: Color(0xff13B887),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            topLeft: Radius.elliptical(0, 50),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 30),
                              child: Text(
                                'Overview',
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Icon(Icons.arrow_drop_down,
                                  color: Colors.white, size: 35),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Icon(Icons.favorite_border,
                                  color: Colors.white, size: 20),
                            ),
                          ],
                        ),
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
                    padding: EdgeInsets.only(top: 20, left: 20),
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
                              color: Color(0xff13B887),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.done,
                                color: Colors.white, size: 15)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Etiam venenatis sit amet risus a bibendum. Integer a nibh',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'feugiat, congue nunc ac, auctor tortor. Nam luctus libero',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'sed tortor luctus, sit amet porttitor ex dignissim. Nam vitae',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'sem tortor. Etiam in risus egestas, ultricies dui nec, tempor',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                ' ante. Vestibulum eu imperdiet velit,',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.black38,
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
      ),
    );
  }
}
