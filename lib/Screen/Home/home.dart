import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Profile/InvestorScreen.dart';
import '../Startup/Startupscreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List titleIcons = [
    'assets/images/planIcon.png',
    'assets/images/planIcon.png',
  ];
  List titleText = [
    "Build a Startup",
    "Participate in Startup",
  ];
  List description = [
    'Lorem ipsum dolor sit amet,consectetur adipiscing elit.Etiam elementum pharetraeros, ac',
    'Lorem ipsum dolor sit amet,consectetur adipiscing elit.Etiam elementum pharetraeros, ac',
  ];
  List bgImage = [
    'assets/images/featured.png',
    'assets/images/featured2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ListTile(
                leading: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/personlogo.png'),
                  ),
                ),
                title: Text(
                  'Good Morning',
                  style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 106, 106, 106),
                      fontSize: 16.sp),
                ),
                subtitle: Text(
                  'Huzayfah Hanif',
                  style: GoogleFonts.poppins(
                      color: const Color(0xff232323),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                ),
                trailing: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: 40.w,
                      child: CircleAvatar(
                        radius: 100.r,
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 1,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(200)),
                        child: Text(
                          '  ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      // padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.2),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(CupertinoIcons.search),
                          hintText: 'Search',
                          hintStyle: GoogleFonts.dmSans(
                              color: Color.fromARGB(255, 106, 106, 106),
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 50.h,
                    width: 50.w,
                    margin: const EdgeInsets.all(8),
                    child: ImageIcon(
                      AssetImage(
                        'assets/images/setting.png',
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'Featured',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Container(
                    height: 226.h,
                    width: 344.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xffBA55D3),
                        image: DecorationImage(
                          image: AssetImage("assets/images/featured2.png"),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 35.w,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: SvgPicture.asset(
                                      "assets/images/img_vector_indigo_100.svg"),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "Build a Startup",
                                style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 78.0),
                            child: Text(
                              "Lorem ipsum dolor sit amet,elit. Etiam Etiam elementum pharetra adipiscing Etiam elementum pharetra consectetur eros, ac",
                              style: GoogleFonts.dmSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30.h,
                                width: 86.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Build",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffBA55D3)),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, left: 8, right: 8, bottom: 4),
                child: Text(
                  'Categories',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 8),
                height: 90.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                      List.generate(4, (index) => const MyCategoriesCard()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Most Funded',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                    Text('See All',
                        style: GoogleFonts.dmSans(
                            color: Colors.grey, fontSize: 15.sp)),
                  ],
                ),
              ),
              Container(
                height: 250.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(6, (index) => const MyCard()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 205.w,
      height: 221.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Startuppage()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/building.png'),
                    ),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                size: 15.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Beyond',
                        style: GoogleFonts.dmSans(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'IT Company',
                        style: GoogleFonts.dmSans(
                          fontSize: 10.sp,
                        ),
                      ),
                      trailing: const Image(
                          image: AssetImage('assets/images/unity.png')),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Raised Funds',
                              style: GoogleFonts.dmSans(
                                fontSize: 10.sp,
                              ),
                            ),
                            Text(
                              '\$22.2 M',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Min.inv',
                              style: GoogleFonts.dmSans(
                                fontSize: 10.sp,
                              ),
                            ),
                            Text(
                              '\$124.0',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Shareholders',
                              style: GoogleFonts.dmSans(
                                fontSize: 10.sp,
                              ),
                            ),
                            Text(
                              '2506',
                              style: GoogleFonts.dmSans(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class MyCategoriesCard extends StatelessWidget {
  const MyCategoriesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 100.h,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage('assets/images/Education.png'),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'AI Tech',
              style: GoogleFonts.dmSans(fontSize: 16.sp),
            ),
          ],
        ),
      ),
    );
  }
}

class FeaturedCard extends StatelessWidget {
  const FeaturedCard(
      {Key? key,
      required this.titleIcon,
      required this.titleText,
      required this.description,
      required this.onCall,
      required this.onTapOnDetails,
      this.bgCoolor = Colors.white,
      required this.bgImage})
      : super(key: key);
  final String titleIcon;
  final String titleText;
  final String description;
  final Function onCall;
  final Function onTapOnDetails;
  final Color? bgCoolor;
  final String bgImage;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        width: 239,
        // width: MediaQuery.of(context).size.width,
        height: 158,
        // height: MediaQuery.of(context).size.height/2,
        margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
        decoration: BoxDecoration(
          color: const Color(0xff13B887),
          borderRadius: BorderRadius.circular(9),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: Image(
                    image: AssetImage(bgImage
                        // 'assets/images/featured.png'
                        ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image(image: AssetImage(titleIcon)),
                    const Spacer(flex: 1),
                    const Text(
                      'Build Startup',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    const Spacer(flex: 1),
                    SizedBox(
                      width: 239 / 2,
                      child: Text(
                        description,
                        style:
                            const TextStyle(color: Colors.white70, fontSize: 8),
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    SizedBox(
                      width: 50.0,
                      height: 20.0,
                      child: ElevatedButton(
                          // color: Colors.white,
                          onPressed: () {},
                          child: const Text(
                            'Build',
                            style: TextStyle(
                                color: Color(0xff13B887),
                                fontWeight: FontWeight.w400,
                                fontSize: 6),
                          )),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: const ImageIcon(
                    AssetImage('assets/images/details.png'),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
