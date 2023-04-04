import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_start_up/Freelancer/View/messages.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';



class ProfileFreelancer extends StatefulWidget {
  ProfileFreelancer({Key? key}) : super(key: key);

  @override
  State<ProfileFreelancer> createState() => _ProfileFreelancerState();
}

class _ProfileFreelancerState extends State<ProfileFreelancer> {
  List name=["Services","Portfolio","Reviews","About"];

  List images=["assets/images/Vector (1).png","assets/images/Vector@2x.png","assets/images/Vector (2).png","assets/images/Vector (2).png"];

  var Currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification? overscroll) {
          overscroll!.disallowGlow();
          return true;
        },
        child:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(

                        onTap: (){Navigator.pop(context);},

                        child: Icon(Icons.arrow_back_ios_rounded)),
                    Text(
                      "Resister as Freelancer",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700, fontSize: 16.sp),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.notifications_none,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                        ),
                        Positioned.fill(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 5.r,
                                backgroundColor: Colors.green,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 50,),
                    Column(
                      children: [
                        SizedBox(height: 25.h,),
                        Container(
                          height: 78.h,
                          width: 78.w,

                          decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    "assets/images/img_ellipse105.png"),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shaheer Ahmed",
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.sp,
                                  color: Color(0xff232323))),
                          Text("Graphic Designer",
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.sp,
                                  color: Color(0xff232323).withOpacity(0.50))),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text("\$30",
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                      color: Color(0xff232323))),
                              SizedBox(
                                height: 7,
                              ),
                              Text("/Hr",
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color:
                                      Color(0xff232323).withOpacity(0.50))),
                              SizedBox(
                                width: 10.w,
                              ),
                              Icon(
                                Icons.location_pin,
                                color: Color(0xff000000).withOpacity(0.30),
                                size: 14.sp,
                              ),
                              Text("Istanbol, Turkey",
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color:
                                      Color(0xff000000).withOpacity(0.50))),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              SmoothStarRating(
                                  allowHalfRating: false,
                                  starCount: 5,
                                  rating: 5.0,
                                  size: 15.0,
                                  filledIconData: Icons.star,
                                  halfFilledIconData: Icons.star,
                                  color: Colors.yellow,
                                  borderColor: Colors.green,
                                  spacing: 0.0),
                              SizedBox(
                                width: 5,
                              ),
                              Text("5.0",
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.sp,
                                      color: Colors.black)),
                              SizedBox(
                                width: 10.h,
                              ),
                              Text("(100 Reviews)",
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Color(0xff232323)))
                            ],
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 26.h,
                                width:80.w,
                                decoration: BoxDecoration(
                                  color: Currentindex==3?Color(0xff13B887
                                  ):Color(0xff232323),

                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                    child: Text("Hire Me",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.white, fontSize: 11.sp),
                                    )),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Messages()));},
                                child: Container(
                                  height: 26.h,
                                  width:80.w,
                                  decoration: BoxDecoration(

                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text(
                                        "Chat",
                                        style: GoogleFonts.dmSans(
                                            color: Colors.black, fontSize: 11.sp),
                                      )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.05,
                  child: ListView.builder(
                    itemCount: name.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              Currentindex=index;

                            });
                          },
                          child: Container(
                              height: 35.h,
                              width:107.w,
                              decoration: BoxDecoration(
                                  color: Currentindex==index?Colors.black:Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("${images[index]}",color: Currentindex!=index?Colors.black:Colors.white,),
                                  SizedBox(width: 5.w,),
                                  Text(name[index],
                                      style: GoogleFonts.dmSans(
                                          color: Currentindex!=index?Colors.black:Colors.white, fontSize: 11))
                                ],
                              )),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Visibility(
                  visible: Currentindex==1,
                  child: Container(
                    height: 580.h,
                    child: GridView.builder(
                        itemCount: 13,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 190,
                          crossAxisCount: 2,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 15,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.22,
                            child: Column(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.17,
                                  width: 160.w
,                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        //background color of box
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0, // soften the shadow
                                          spreadRadius: 1.0, //extend the shadow

                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage("https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80")
                                      )
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 27.h,
                                              width: 27.w,decoration: BoxDecoration(
                                              color: Color(0xff2C8B92).withOpacity(0.58),
                                              borderRadius: BorderRadius.circular(5),

                                            ),
                                              child: Icon(Icons.favorite,color: Color(0xffB40F0F),size: 15,),
                                            ),
                                          ],
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 0),
                                      child: Text("Logo Designing",style: GoogleFonts.dmSans(fontWeight: FontWeight.w700,fontSize: 13),),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text("80\$",style: GoogleFonts.dmSans(fontWeight: FontWeight.w700,fontSize: 12.sp)),
                                          SizedBox(
                                            width: 7.w,
                                          ),
                                          Text("|",style: GoogleFonts.dmSans(fontWeight: FontWeight.bold,fontSize: 13.sp)),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text("240 Orders",style: GoogleFonts.dmSans(fontWeight: FontWeight.w400,fontSize: 10.sp)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 15,
                                          ),
                                          Text("5.0",style: GoogleFonts.dmSans(fontWeight: FontWeight.w700,fontSize: 13))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Visibility(
                  visible: Currentindex==3,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              //background color of box
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 5, // soften the shadow
                                spreadRadius: 1, //extend the shadow
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "About Me",
                                            style: GoogleFonts.dmSans(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Container(
                                            width:
                                            MediaQuery.of(context).size.width * 0.7,
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet risus a bibendum. ",
                                                maxLines: 100,
                                                softWrap: true,
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 10.sp,
                                                    color: Color(0xff232323)
                                                        .withOpacity(0.50))),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.085,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              //background color of box
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 5, // soften the shadow
                                spreadRadius: 1, //extend the shadow
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset("assets/images/img_calendar.svg"),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Joined Date",
                                            style: GoogleFonts.dmSans(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text("05 july,2019",
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10.sp,
                                                  color: Color(0xff232323)
                                                      .withOpacity(0.50))),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.085,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              //background color of box
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 5, // soften the shadow
                                spreadRadius: 1, //extend the shadow
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/img_clock_27X27.svg"),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Last Active",
                                            style: GoogleFonts.dmSans(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text("50 Mins Ago",
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10.sp,
                                                  color: Color(0xff232323)
                                                      .withOpacity(0.50))),
                                          SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.085,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              //background color of box
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 5, // soften the shadow
                                spreadRadius: 1, //extend the shadow
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/img_refresh_24X24.svg"),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Language",
                                            style: GoogleFonts.dmSans(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text("English",
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10.sp,
                                                  color: Color(0xff232323)
                                                      .withOpacity(0.50))),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.085,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              //background color of box
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 5, // soften the shadow
                                spreadRadius: 1, //extend the shadow
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset("assets/images/img_menu.svg"),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Response Time",
                                            style: GoogleFonts.dmSans(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text("%0 Mins Ago",
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10.sp,
                                                  color: Color(0xff232323)
                                                      .withOpacity(0.50))),
                                          SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: Currentindex==2,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.57.h,
                    child: ListView.builder(
                      itemCount: 6,
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.26,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                //background color of box
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 5, // soften the shadow
                                  spreadRadius:1, //extend the shadow
                                )
                              ],
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height * 0.05,
                                          width: MediaQuery.of(context).size.width * 0.1,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/img_ellipse5.png"))),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Phil",
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Row(
                                              children: [
                                                SmoothStarRating(
                                                    allowHalfRating: false,
                                                    starCount: 5,
                                                    rating: 5.0,
                                                    size: 12.0.sp,
                                                    filledIconData: Icons.star,
                                                    halfFilledIconData: Icons.star,
                                                    color: Colors.yellow,
                                                    borderColor: Colors.green,
                                                    spacing: 0.0),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("5.0",
                                                    style: GoogleFonts.dmSans(
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 10.sp,
                                                        color: Colors.black)),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                // Text("(100 Reviews)",
                                                //     style: GoogleFonts.dmSans(
                                                //         fontWeight: FontWeight.w400,
                                                //         fontSize: 12,
                                                //         color: Color(0xff232323)))
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4 days ago",
                                          style: GoogleFonts.dmSans(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10.sp,
                                              color: Color(0xff232323).withOpacity(0.35)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 8.h,),
                                Flexible(
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet risus a bibendum. Integer a nibh feugiat, congue nunc a",
                                    style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,


                                        fontSize: 9.sp,
                                        color: Color(0xff232323).withOpacity(0.35)),
                                  ),
                                )
                              ]),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                Visibility(
                  visible: Currentindex==0,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: GoogleFonts.dmSans(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius:0.05, // soften the shadow
                            spreadRadius: 0.05, //extend the shadow
                            // offset: Offset(
                            //   1.0, // Move to right 10  horizontally
                            //   1.0, // Move to bottom 10 Vertically
                            // ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 18.0, vertical: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "UI/UX Designer",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14.sp),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
                                      height:
                                      MediaQuery.of(context).size.height * 0.06,
                                      width: MediaQuery.of(context).size.width * 0.06,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height:
                                      MediaQuery.of(context).size.height * 0.06,
                                      width: MediaQuery.of(context).size.width * 0.06,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,

                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("100\$"),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "I'm a professional designer specialist in logo and identity design.",
                              style: GoogleFonts.dmSans(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff232323).withOpacity(0.50)),
                              //
                              //           Deliverables:
                              //           1- Presentation file which shows you how your logo will appear in many applications (Mockups).
                              //     2- Vector files / Open sources: (Ai, EPS, and PDF).
                              // 3- JPEGs files of the logo in many different colored backgrounds.")
                            ),
                            Text(
                              "I guarantee you the quality in a short time.",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff232323).withOpacity(0.50)),
                              //
                              //           Deliverables:
                              //           1- Presentation file which shows you how your logo will appear in many applications (Mockups).
                              //     2- Vector files / Open sources: (Ai, EPS, and PDF).
                              // 3- JPEGs files of the logo in many different colored backgrounds.")
                            ),
                            Text(
                              "Deliverables:",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff232323).withOpacity(0.50)),
                              //
                              //           Deliverables:
                              //           1- Presentation file which shows you how your logo will appear in many applications (Mockups).
                              //     2- Vector files / Open sources: (Ai, EPS, and PDF).
                              // 3- JPEGs files of the logo in many different colored backgrounds.")
                            ),
                            Text(
                              " 1- Presentation file which shows you how your logo will appear in many applications (Mockups).",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff232323).withOpacity(0.50)),
                              //
                              //           Deliverables:
                              //           1- Presentation file which shows you how your logo will appear in many applications (Mockups).
                              //     2- Vector files / Open sources: (Ai, EPS, and PDF).
                              // 3- JPEGs files of the logo in many different colored backgrounds.")
                            ),
                            Text(
                              "2- Vector files / Open sources: (Ai, EPS, and PDF).",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff232323).withOpacity(0.50)),
                              //
                              //           Deliverables:
                              //           1- Presentation file which shows you how your logo will appear in many applications (Mockups).
                              //     2- Vector files / Open sources: (Ai, EPS, and PDF).
                              // 3- JPEGs files of the logo in many different colored backgrounds.")
                            ),
                            Text(
                              "3- JPEGs files of the logo in many different coloured background",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff232323).withOpacity(0.50)),
                              //
                              //           Deliverables:
                              //           1- Presentation file which shows you how your logo will appear in many applications (Mockups).
                              //     2- Vector files / Open sources: (Ai, EPS, and PDF).
                              // 3- JPEGs files of the logo in many different colored backgrounds.")
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Skills",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700, fontSize: 14.sp),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.06,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                               shape: BoxShape.circle),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 10,
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.25,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 0.05, // soften the shadow
                            spreadRadius: 0.05, //extend the shadow

                          )
                        ],
                      ),
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.width * 0.07,
                                  width: MediaQuery.of(context).size.width * 0.23,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text(
                                        "UI/UX Design",
                                        style: GoogleFonts.dmSans(
                                            color: Colors.white, fontSize: 11.sp),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.width * 0.07,
                                    width: MediaQuery.of(context).size.width * 0.23,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,

                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "Logo Design",
                                          style: GoogleFonts.dmSans(
                                              color: Colors.white, fontSize: 11.sp),
                                        )),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.width * 0.07,
                                  width: MediaQuery.of(context).size.width * 0.23,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text(
                                        "Video Editing",
                                        style: GoogleFonts.dmSans(
                                            color: Colors.white, fontSize: 11.sp),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Container(
                                  height: MediaQuery.of(context).size.width * 0.07,
                                  width: MediaQuery.of(context).size.width * 0.23,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text(
                                        "Animations",
                                        style: GoogleFonts.dmSans(
                                            color: Colors.white, fontSize: 11.sp),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.width * 0.07,
                                    width: MediaQuery.of(context).size.width * 0.23,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "Post Designs",
                                          style: GoogleFonts.dmSans(
                                              color: Colors.white, fontSize: 11.sp),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
