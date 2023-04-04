import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PitchDeckScreenpage extends StatefulWidget {
  const PitchDeckScreenpage({Key? key}) : super(key: key);

  @override
  State<PitchDeckScreenpage> createState() => _PitchDeckScreenpageState();
}

class _PitchDeckScreenpageState extends State<PitchDeckScreenpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      'Pitch Deck',
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    height: 26.h,
                    width: 71.w,
                    decoration: BoxDecoration(
                      color: Color(0xffBA55D3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'Overview',
                        style: GoogleFonts.dmSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Integer a nibh feugiat, congue nunc ac,\nauctor tortor. Nam luctus libero ',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff232323),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet risus a bibendum. Integer a nibh feugiat, congue nunc ac, auctor tortor. Nam luctus libero sed tortor luctus, sit amet porttitor ex dignissim. Nam vitae sem tortor. Etiam in risus egestas, ultricies dui nec, tempor ante. Vestibulum eu imperdiet velit,'),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image(
                      image: AssetImage('assets/images/meeting.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    height: 26.h,
                    width: 71.w,
                    decoration: BoxDecoration(
                      color: Color(0xffBA55D3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'Solution',
                        style: GoogleFonts.dmSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Integer a nibh feugiat, congue nunc ac,\nauctor tortor. Nam luctus libero ',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff232323),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet risus a bibendum. Integer a nibh feugiat, congue nunc ac, auctor tortor. Nam luctus libero sed tortor luctus, sit amet porttitor ex dignissim. Nam vitae sem tortor. Etiam in risus egestas, ultricies dui nec, tempor ante. Vestibulum eu imperdiet velit,'),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image(
                      image: AssetImage('assets/images/meeting.png'),
                      fit: BoxFit.cover,
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
