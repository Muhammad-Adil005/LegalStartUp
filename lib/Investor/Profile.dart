import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.white,
            child: Container(
              height: 356.h,
              decoration: BoxDecoration(
                  color: Color(0xff232323),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 23.w, right: 23.w),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xffFFFFFF),
                        ),
                        Text(
                          'Profile',
                          style: GoogleFonts.dmSans(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                        Container(
                            height: 25.h,
                            width: 25.h,
                            child: Stack(
                              children: [
                                Container(
                                    height: 25.h,
                                    width: 25.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFFFFFF),
                                    ),
                                    child: Icon(
                                      Icons.notifications_none,
                                      size: 20,
                                    )),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    width: 7.h,
                                    height: 7.h,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff13B887)),
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            //margin: EdgeInsets.only(top: 25.h),
                            height: 107.h,
                            width: 107.h,
                            child: Stack(
                              children: [
                                Container(
                                    height: 107.h,
                                    width: 107.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // color: Color(0xffFFFFFF),
                                    ),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/profile_vector.png'),
                                      fit: BoxFit.fill,
                                    )),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    width: 26.h,
                                    height: 26.h,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff5F18F4)),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/edit_vector.png')),
                                  ),
                                )
                              ],
                            )),
                        SizedBox(height: 14.h),
                        Text(
                          'Mike Dean',
                          style: GoogleFonts.dmSans(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage(
                                    'assets/location_profile_vector.png')),
                            SizedBox(width: 4.w),
                            Text(
                              'Istanbul, Turkey',
                              style: GoogleFonts.dmSans(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(height: 14.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 26.h,
                              decoration: BoxDecoration(
                                  color: Color(0xff13B887),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  'View Record',
                                  style: GoogleFonts.dmSans(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            SizedBox(width: 11.w),
                            Container(
                              height: 26.h,
                              width: 100,
                              decoration: BoxDecoration(
                                // color: Color(0xff13B887),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                border: Border.all(
                                    color: Color(0xffFFFFFF), width: 1),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  'Chat',
                                  style: GoogleFonts.dmSans(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 26.h),
          Container(
            padding: EdgeInsets.only(left: 23.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Mike Dean',
                      style: GoogleFonts.dmSans(
                          color: Color(0xff232323),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 12.w),
                    Container(
                      width: 13.h,
                      height: 13.h,
                      decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          // color: Color(0xff5F18F4)
                          ),
                      child: Image(
                        image: AssetImage('assets/edit_vector_black.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 19.h),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 23.w),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 10.h,
                                    width: 15.w,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/messages_icon.png')),
                                  ),
                                  SizedBox(width: 14.w),
                                  Text(
                                    'Mikedean@gmail.com',
                                    style: GoogleFonts.dmSans(
                                        color: Color.fromRGBO(35, 35, 35, 0.66),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.h),
                            Container(
                              height: 1,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: Color.fromRGBO(35, 35, 35, 0.66),
                                ),
                              ),
                            ),
                            SizedBox(height: 13.h),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 15.h,
                                    width: 15.w,
                                    child: Image(
                                      image: AssetImage('assets/call_icon.png'),
                                    ),
                                  ),
                                  SizedBox(width: 14.w),
                                  Text(
                                    '532564435',
                                    style: GoogleFonts.dmSans(
                                        color: Color.fromRGBO(35, 35, 35, 0.66),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.h),
                            Container(
                              height: 1,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.8,
                                  color: Color.fromRGBO(35, 35, 35, 0.66),
                                ),
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 17.h,
                                    width: 14.w,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/location_icon.png')),
                                  ),
                                  SizedBox(width: 14.w),
                                  Text(
                                    'Istanbul, Turkey',
                                    style: GoogleFonts.dmSans(
                                        color: Color.fromRGBO(35, 35, 35, 0.66),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 28.h),
                      Container(
                        padding: EdgeInsets.only(right: 23.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Investments',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xff232323),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'See all',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color.fromRGBO(35, 35, 35, 0.7),
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.25),
                                          spreadRadius: 3,
                                          blurRadius: 7,
                                        ),
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 21.h),
                      Container(
                        height: 120.h,
                        child: InvestmentHorizontal(),
                      ),
                      SizedBox(height: 21.h),
                      Container(
                        padding: EdgeInsets.only(right: 23.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Documents',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xff232323),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'See all',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color.fromRGBO(35, 35, 35, 0.7),
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.25),
                                          spreadRadius: 3,
                                          blurRadius: 7,
                                        ),
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        width: 390.w,
                        margin: EdgeInsets.only(right: 23.w),
                        child: ProfileverticalList(),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class InvestmentHorizontal extends StatefulWidget {
  const InvestmentHorizontal({Key? key}) : super(key: key);

  @override
  State<InvestmentHorizontal> createState() => _InvestmentHorizontalState();
}

class _InvestmentHorizontalState extends State<InvestmentHorizontal> {
  List images = [
    'assets/moto.png',
    'assets/spotify.png',
    'assets/unity.png',
  ];
  List title = [
    'Moto inc',
    'Spotify',
    'Unity',
  ];
  List value = [
    '\$1500',
    '\$350',
    '\$500',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 4.w),
        separatorBuilder: (context, index) {
          return SizedBox();
        },
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            height: 110.h,
            width: 119.w,
            margin: EdgeInsets.only(right: 13.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(left: 12.w, right: 12.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(
                      images[index],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            title[index],
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff232323)),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  value[index],
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Color(0xff232323),
                                  ),
                                ),
                              ),
                              Container(
                                width: 12.w,
                                height: 6.h,
                                child: Image(
                                  image: AssetImage('assets/arrow.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProfileverticalList extends StatefulWidget {
  const ProfileverticalList({Key? key}) : super(key: key);

  @override
  State<ProfileverticalList> createState() => _ProfileverticalListState();
}

class _ProfileverticalListState extends State<ProfileverticalList> {
  List images = [
    'assets/Income_analysis.png',
    'assets/shareholder_vector.png',
  ];
  List title = [
    'Bank Statements',
    'Shareholder Docs',
  ];
  List dates = [
    '20,Jun,2022',
    '20,Sep,2022',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.h);
          },
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              height: 55.h,
              padding: EdgeInsets.only(left: 12.w, right: 12.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 26,
                      height: 26,
                      child: Image(
                        image: AssetImage(images[index]),
                      ),
                    ),
                    SizedBox(width: 14.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            title[index],
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff232323),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            dates[index],
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                              color: Color.fromRGBO(35, 35, 35, 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
