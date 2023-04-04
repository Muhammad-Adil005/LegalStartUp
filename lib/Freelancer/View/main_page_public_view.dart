import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_start_up/Freelancer/View/settings_page.dart';

class MainPagePublicView extends StatelessWidget {
  const MainPagePublicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 0.h,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings_Area()));
                },
                child: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/img_ellipse75.png'),
                ),
              ),
              title: Text(
                'Good Morning',
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 106, 106, 106),
                    fontSize: 16.sp),
              ),
              subtitle: Text(
                'Shaheer',
                style: GoogleFonts.poppins(
                    color: const Color(0xff232323),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
              trailing: Stack(
                children: <Widget>[
                  const SizedBox(
                    width: 40,
                    child: CircleAvatar(
                      radius: 100,
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
                      width: 13.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(200)),
                      child: const Text(
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
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
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
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(CupertinoIcons.search),
                        hintText: 'Search',
                        hintStyle: GoogleFonts.dmSans(
                            color: const Color.fromARGB(255, 106, 106, 106),
                            fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
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
                  child: const ImageIcon(
                    AssetImage(
                      'assets/images/Vector (6).png',
                    ),
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
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
              height: 65.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 107.w,
                    // height: 60,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: null,
                      child:  Text(
                        'Done',
                        style: TextStyle(color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.w400)
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 107.w,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: null,
                      child:  Text(
                        'Done',
                        style: TextStyle(color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.w400)
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 107.w,
                    // height: 60,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: null,
                      child: Text(
                        'Done',
                        style: TextStyle(color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8.0, top: 8.0),
              child: Text(
                'Popular Posts',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,

                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              height: 180.h,
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
              // width: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(4, (index) => const MyCard()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0, top: 8.0, bottom: 8.0),
                    child: Text(
                      'Most popular',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  Text('See All',
                      style:
                          GoogleFonts.dmSans(color:  Color(0xff13B887),fontSize: 12)),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: List.generate(4, (index) => const MyListTile()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(16),
       color: Colors.white,
       boxShadow: [

         BoxShadow(
           color: Colors.grey.withOpacity(0.06),
           spreadRadius: 10,
           blurRadius: 0,
           // changes position of shadow
         ),
       ],
     ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 45.h,
              width: 45.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/img_rectangle258.png"))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Conor Murphy',
                    style: GoogleFonts.dmSans(fontSize: 10.sp,fontWeight:FontWeight.w400),
                  ),
                  Text(
                    'UI/UX Designer',
                    style: GoogleFonts.dmSans(fontSize: 7.sp, color: Colors.grey,fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 13.sp,
                        color: Colors.yellow[700],
                      ),
                      Text(
                        '5.0',
                        style: GoogleFonts.dmSans(fontSize:10.sp,fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(


                  Icons.favorite,
                  size: 12,
                  color: Color(0xffB40F0F),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '70,000\$',
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,fontSize: 10, color: Colors.black),
                      ),
                      TextSpan(
                        text: '/Hr',
                        style: GoogleFonts.dmSans(

fontSize: 10,                            // fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       height: 120.h,
        width: 115.w,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 55.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/img_rectangle258.png"))),
                  ),
                  Icon(
                    Icons.favorite,
                    size: 12.sp,
                    color: Color(0xffB40F0F),
                  )
                ],
              ),
              SizedBox(height: 10.h,),
              Text(
                'Conor Murphy',
                style: GoogleFonts.dmSans(fontSize: 10.sp,fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5.h,),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '70,000\$',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold, color: Colors.black,fontSize: 10.sp),
                    ),
                    TextSpan(
                      text: '/Hr',
                      style: GoogleFonts.dmSans(
                        fontSize: 10.sp,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey),

                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h,),
              Text(
                'UI/UX Designer',
                style: GoogleFonts.dmSans(fontSize: 7,fontWeight: FontWeight.w400, color: Colors.grey),
              ),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Icon(Icons.star,size: 13.sp, color: Colors.yellow[600]),
                  Text(
                    '5.0',
                    style: GoogleFonts.dmSans(fontWeight: FontWeight.bold,fontSize: 10),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                   Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.black,
                    size: 17.sp,
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
