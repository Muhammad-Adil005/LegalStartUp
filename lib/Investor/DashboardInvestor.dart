import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'AppBarContainer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 390.w,
              height: 297.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 25.w, top: 40.h, right: 25.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios_new),
                        Text(
                          'Investors Dashboard',
                          style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff232323)),
                        ),
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.black,
                              child: Icon(
                                size: 16,
                                Icons.notifications_none_sharp,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              top: 0.h,
                              right: 0.w,
                              child: Container(
                                width: 7,
                                height: 7,
                                decoration: BoxDecoration(
                                  color: Color(0xff13B887),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 390.w,
                    height: 153.h,
                    margin: EdgeInsets.only(left: 23.w, right: 23.w),
                    decoration: BoxDecoration(
                      color: Color(0xff232323),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 23.w, right: 23.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Container(
                            child: Text(
                              '\$ 5404.00',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: Colors.white),
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Text(
                              'Your Balance',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xff13B887),
                              ),
                            ),
                          ),
                          Spacer(flex: 2),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: 54.h,
                              width: 299.w,
                              decoration: BoxDecoration(
                                color: Color(0xff13B887),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Withdraw',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Spacer(flex: 2),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              //width: 390.w,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(left: 23.w, right: 23.w, top: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My Investments',
                            style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff232323)),
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
                    SizedBox(height: 8.h),
                    Container(
                      height: 120.h,
                      margin: EdgeInsets.only(left: 20.w),
                      child: InvestmentHorizontal(),
                    ),
                    SizedBox(height: 25.h),
                    Container(
                      padding: EdgeInsets.only(left: 23.w, right: 23.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Transactions',
                            style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff232323)),
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
                    SizedBox(height: 14.h),
                    Container(
                      width: 390.w,
                      margin: EdgeInsets.only(left: 23.w, right: 23.w),
                      child: TransactionsVertical(),
                    ),
                    SizedBox(height: 27.h),
                    Container(
                      padding: EdgeInsets.only(left: 23.w, right: 23.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Withdrawals',
                            style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff232323)),
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
                    SizedBox(height: 14.h),
                    Container(
                      width: 390.w,
                      margin: EdgeInsets.only(left: 23.w, right: 23.w),
                      child: WithdrawalsVertical(),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Investment
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

//Transaction
class TransactionsVertical extends StatefulWidget {
  const TransactionsVertical({Key? key}) : super(key: key);

  @override
  State<TransactionsVertical> createState() => _TransactionsVerticalState();
}

class _TransactionsVerticalState extends State<TransactionsVertical> {
  List images = [
    'assets/moto.png',
    'assets/spotify.png',
    'assets/unity.png',
  ];
  List title = ['Moto inc', 'Spotify', 'Unity'];
  List desc = ['Mobile Company', 'Music', 'Gaming'];
  List value = ['-\$28', '-\$25', '-\$25'];
  List dates = ['20 Aug , 2022', '19 Jun, 2022', '19 Jun, 2022'];
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    width: 31,
                    height: 31,
                    child: Image(
                      image: AssetImage(images[index]),
                    ),
                  ),
                  SizedBox(width: 8.w),
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
                          desc[index],
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color.fromRGBO(35, 35, 35, 0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          value[index],
                          style: GoogleFonts.dmSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff232323)),
                        ),
                      ),
                      Container(
                        child: Text(
                          dates[index],
                          style: GoogleFonts.dmSans(
                            fontSize: 6,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(35, 35, 35, 0.5),
                          ),
                        ),
                      ),
                    ],
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

//Withdrawals
class WithdrawalsVertical extends StatefulWidget {
  const WithdrawalsVertical({Key? key}) : super(key: key);

  @override
  State<WithdrawalsVertical> createState() => _WithdrawalsVerticalState();
}

class _WithdrawalsVerticalState extends State<WithdrawalsVertical> {
  List images = [
    'assets/unknown.png',
    'assets/unknown.png',
    'assets/unknown.png',
  ];
  List value1 = ['\$250', '\$250', '\$250'];
  List value2 = ['\$2025', '\$2025', '\$2025'];
  List dates = ['20,Jun,2022', '20,Jun,2022', '20,Jun,2022'];
  List status = ['Remaining', 'Remaining', 'Remaining'];

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffD9D9D9),
                    ),
                    child: Image(
                      image: AssetImage(images[index]),
                    ),
                  ),
                  SizedBox(width: 13.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          value1[index],
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          value2[index],
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff232323),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          dates[index],
                          style: GoogleFonts.dmSans(
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(35, 35, 35, 0.5),
                          ),
                        ),
                      ),
                    ],
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
