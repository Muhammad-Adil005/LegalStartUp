import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EarningDashboard extends StatelessWidget {
  EarningDashboard({Key? key}) : super(key: key);
  List people_profile = [
    "assets/images/img_ellipse75.png",
    "assets/images/img_ellipse75.png",
    "assets/images/img_ellipse75.png",
    "assets/images/img_ellipse75.png",
  ];
  List people_name = [
    "Phil Jones",
    "Phil Jones",
    "Phil Jones",
    "Phil Jones",
  ];
  List description = [
    "Logo Designing",
    "Logo Designing",
    "Logo Designing",
    "Logo Designing",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 12, top: 12),
          child: CircleAvatar(
            child: Image(
              image: AssetImage('assets/images/img_ellipse75.png'),
            ),
          ),
        ),
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Good Morning',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w200),
            ),
            Text(
              'Shaheer',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          // Expanded(child: Container()),
          Stack(
            children: <Widget>[
              Container(
                width: 40,
                child: const CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    )),
              ),
              Positioned(
                  top: 8,
                  right: 1,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(200)),
                    child: Text(
                      '  ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 12, top: 15, right: 12),
        alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'My Dashboard',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              // height: 240,
              height: 240.h,
              width: 360.w
                ,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Total Earnings',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color: Colors.grey),
                        ),
                        Text(
                          '\$2405.0',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 32.sp),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DashBoardTextData(
                          title: '\$200', description: 'Earning in June'),
                      DashBoardTextData(
                          title: '150', description: 'Active Jobs'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DashBoardTextData(
                          title: '1200\$', description: 'Pending Clearences'),
                      DashBoardTextData(
                          title: '12', description: 'Jobs Completed'),
                    ],
                  ),
                  Container(),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 22.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: Theme.of(context).primaryColor
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Active Jobs',
                style: GoogleFonts.dmSans(
                    fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      4,
                      (index) => ActiveJobs(
                            people_name: people_name[index],
                            people_profile: people_profile[index],
                            description: description[index],
                          )),
                ),
              ),
            )
            // ListTile(
            //   selectedTileColor: Colors.white,
            //   selected: true,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   onTap:()=> {},
            //   // visualDensity: VisualDensity(vertical: 3),
            //   leading: Stack(
            //     children: <Widget>[
            //       Image(image: AssetImage(people_profile[0])),
            //       Positioned(
            //           right: 0,
            //           bottom: 0,
            //           child: Container(
            //             height: 12,
            //             width: 12,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(10),
            //               color: primaryColor,
            //             ),)
            //       ),
            //     ],
            //   ),
            //   title: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         people_name[0],
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       Text(
            //         description[0],
            //         style: TextStyle(
            //             color: Colors.black45,
            //           fontSize: 10
            //         ),
            //       ),
            //     ],
            //   ),
            //   // subtitle:
            //   trailing: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: <Widget>[
            //       Row(
            //         children: [
            //           Image(image: AssetImage('assets/icons/dollar_icon.png'))
            //         ],
            //       ),
            //       Text(
            //         '11:00 AM',
            //         style: TextStyle(
            //             color: Colors.grey,
            //             fontSize: 11
            //         ),
            //       )
            //
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class ActiveJobs extends StatelessWidget {
  ActiveJobs(
      {Key? key,
      required this.people_name,
      required this.people_profile,
      required this.description})
      : super(key: key);
  String people_profile;
  String people_name;
  String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      height: 60.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          color: Colors.white),
      child: Row(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.14,
              child: Image(image: AssetImage(people_profile))),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                people_name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(color: Colors.black45, fontSize: 10),
              ),
            ],
          ),
          Expanded(child: Container()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: [
                  ImageIcon(
                    AssetImage(
                      "assets/images/Vector (4).png",
                    ),
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 2.5,
                  ),
                  Text('\$50',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13)),
                ],
              ),
              Text(
                'Delivery in 2 Days',
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DashBoardTextData extends StatelessWidget {
  DashBoardTextData({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
          ),
        ),
        Text(
          description,
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.grey),
        ),
      ],
    );
  }
}
