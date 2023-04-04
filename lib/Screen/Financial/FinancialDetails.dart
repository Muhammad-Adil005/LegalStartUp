/*
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
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinancialDetailsPage extends StatefulWidget {
  const FinancialDetailsPage({Key? key}) : super(key: key);

  @override
  State<FinancialDetailsPage> createState() => _FinancialDetailsPageState();
}

class _FinancialDetailsPageState extends State<FinancialDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(Icons.arrow_back_ios_outlined),
                      ),
                      Text(
                        'Financial Details',
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
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Enter Financial Details',
                        style: GoogleFonts.spaceGrotesk(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff232323),
                        ),
                      ),
                    ],
                  ),
                ),
                Textfield(
                    name: 'Gross Sales', icon: (CupertinoIcons.money_dollar)),
                Textfield(
                    name: 'Net Sales', icon: (CupertinoIcons.money_dollar)),
                Textfield(
                    name: 'Gross Profit', icon: (CupertinoIcons.money_dollar)),
                Textfield(
                    name: 'Earning before interest',
                    icon: (CupertinoIcons.money_dollar)),
                Textfield(
                  name: 'Taxes',
                  icon: (CupertinoIcons.money_dollar),
                ),
                Textfield(
                  name: 'Net Profit',
                  icon: (CupertinoIcons.money_dollar),
                ),
                SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.88,
                  decoration: BoxDecoration(
                    color: Color(0xff13B887),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Textfield({required IconData icon, required String name}) {
  return Padding(
    padding: EdgeInsets.only(left: 20, right: 25, top: 20),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Color(0xff232323), size: 20),
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
        hintText: name,
      ),
    ),
  );
}
