import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class Earnings extends StatefulWidget {
   Earnings({Key? key}) : super(key: key);

  @override
  State<Earnings> createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  bool visible=true;

  @override
  Widget build(BuildContext context) {
    print(visible);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                          onTap:(){Navigator.pop(context);},
                              child: Icon(Icons.arrow_back_ios_rounded)),
                          Text(
                            "Earnings",
                            style: GoogleFonts.dmSans(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          SvgPicture.asset('assets/images/img_clock_17X17.svg',height: 20.0),
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Container(
                    height:229.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
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
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          "Net Income",
                          style: GoogleFonts.dmSans(
                              fontSize: 16.sp, fontWeight: FontWeight.w700,color: Color(0xff232323).withOpacity(.36)),
                        ),
                        Text(
                          "\$ 2405.00",
                          style: GoogleFonts.dmSans(
                              fontSize: 32.sp, fontWeight: FontWeight.w700,color: Color(0xff232323)),
                        ),
                        SizedBox(height: 30.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(children: [
                              Text(
                                "\$ 2405.00",
                                style: GoogleFonts.dmSans(
                                    fontSize: 12.sp, fontWeight: FontWeight.w500,color: Color(0xff232323)),
                              ),
                              Text(
                                "Earning in june",
                                style: GoogleFonts.dmSans(
                                    fontSize: 11.sp, fontWeight: FontWeight.w400,color: Color(0xff232323)),
                              ),

                            ],),
                            Column(children: [
                              Text(
                                "\$ 150",
                                style: GoogleFonts.dmSans(
                                    fontSize: 12.sp, fontWeight: FontWeight.w500,color: Color(0xff232323)),
                              ),
                              Text(
                                "Withdrawn",
                                style: GoogleFonts.dmSans(
                                    fontSize: 11.sp, fontWeight: FontWeight.w400,color: Color(0xff232323)),
                              ),

                            ],),
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(children: [
                              Text(
                                "1200\$",
                                style: GoogleFonts.dmSans(
                                    fontSize: 12.sp, fontWeight: FontWeight.w500,color: Color(0xff232323)),
                              ),
                              Text(
                                "Pending Clearence",
                                style: GoogleFonts.dmSans(
                                    fontSize: 11.sp, fontWeight: FontWeight.w400,color: Color(0xff232323)),
                              ),

                            ],),
                            Column(children: [
                              Text(
                                "\$ 2000",
                                style: GoogleFonts.dmSans(
                                    fontSize: 12.sp, fontWeight: FontWeight.w500,color: Color(0xff232323)),
                              ),
                              Text(
                                "Available",
                                style: GoogleFonts.dmSans(
                                    fontSize: 11.sp, fontWeight: FontWeight.w400,color: Color(0xff232323)),
                              ),

                            ],),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 22.h,
                      width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )
                    ),
                  ),
                  SizedBox(height: 20.h,),
                 Visibility(
                   visible: visible==true,

                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text(
                             "Withdraw",
                             style: GoogleFonts.dmSans(
                                 fontSize: 16.sp, fontWeight: FontWeight.w700,color: Color(0xff232323)),
                           ),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text(
                             "Choose Sum",
                             style: GoogleFonts.dmSans(
                                 fontSize: 11.sp, fontWeight: FontWeight.w400,color: Color(0xff232323).withOpacity(0.76)),
                           ),


                         ],
                       ),
                       SizedBox(height: 10.h,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Container(


                             height: MediaQuery.of(context).size.height*0.08,
                             width: MediaQuery.of(context).size.width*0.41,

                             decoration: BoxDecoration(
                               color:Theme.of(context).primaryColor,
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: Center(
                               child: Text(
                                 "\$50",
                                 style: GoogleFonts.dmSans(

                                     fontSize: 13.sp, fontWeight: FontWeight.w700,color: Colors.white),
                               ),
                             ) ,
                           ),
                           Container(


                             height: MediaQuery.of(context).size.height*0.08,
                             width: MediaQuery.of(context).size.width*0.41,

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
                             child: Center(
                               child: Text(
                                 "\$50",
                                 style: GoogleFonts.dmSans(

                                     fontSize: 13.sp, fontWeight: FontWeight.w700,color: Color(0xff232323)),
                               ),
                             ) ,
                           ),

                         ],
                       ),
                       SizedBox(height: 15,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Container(


                             height: MediaQuery.of(context).size.height*0.08,
                             width: MediaQuery.of(context).size.width*0.41,

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
                             child: Center(
                               child: Text(
                                 "\$1000",
                                 style: GoogleFonts.dmSans(

                                     fontSize: 13.sp, fontWeight: FontWeight.w700,color: Color(0xff232323)),
                               ),
                             ) ,
                           ),
                           Container(


                             height: MediaQuery.of(context).size.height*0.08,
                             width: MediaQuery.of(context).size.width*0.41,

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
                             child: Center(
                               child: Text(
                                 "\$2000",
                                 style: GoogleFonts.dmSans(

                                     fontSize: 13.sp, fontWeight: FontWeight.w700,color: Color(0xff232323)),
                               ),
                             ) ,
                           ),

                         ],
                       ),
                       SizedBox(height: 15,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text(
                             "Enter other amounts",
                             style: GoogleFonts.dmSans(
                                 fontSize: 11.sp, fontWeight: FontWeight.w400,color: Color(0xff232323).withOpacity(0.70)),
                           ),
                         ],
                       ),
                       SizedBox(height: 20.h,),
                       TextFormField(


                         textAlign: TextAlign.center,
                         cursorColor: Color(0xff232323),


                         decoration: InputDecoration(
                           focusColor: Colors.black,


                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),


                           ),
                           enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(
                                 width: 1,
                                 color:Colors.black,
                               )),
                           focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(
                                 width: 1,
                                 color: Colors.black,
                               )),


                         ),
                       ),
                       SizedBox(height: 10.h,),
                     ],
                   ),
                 ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        if(visible!=true){
                          visible=true;

                        }
                        else
                        visible=false;

                      });



                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.085,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text(
                          "Withdrawal Request",
                          style: GoogleFonts.dmSans(
                              fontSize: 14, fontWeight: FontWeight.w500,color: Colors.white),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
