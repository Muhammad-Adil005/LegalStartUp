import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'AppBarContainer.dart';
import 'LogoContainer.dart';
import 'HorizontalList.dart';
import 'InvestDropDown.dart';

class CompanyInvestedIn extends StatefulWidget {
  const CompanyInvestedIn({Key? key}) : super(key: key);

  @override
  State<CompanyInvestedIn> createState() => _CompanyInvestedInState();
}

class _CompanyInvestedInState extends State<CompanyInvestedIn> {
  List text = ['Investment', 'Total Shares'];
  List value = ['\$ 5404.00', '25'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              AppBarContainer(
                icon: Icons.help_outline,
                text: 'Investments',
              ),
              SizedBox(height: 19.h),
              LogoContainer(),
              SizedBox(height: 27.h),
              Container(
                height: 255,
                child: Stack(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/image.png'),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Image(
                            image: AssetImage('assets/heart.png'),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage('assets/pause.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 47.h),
              Container(
                margin: EdgeInsets.only(left: 23.w, right: 23.w),
                height: 65.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    value.length,
                    (index) => InvestmentsShares(
                      text: text[index],
                      value: value[index],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 19.h),
              Container(
                height: 52.h,
                margin: EdgeInsets.only(left: 23.w, right: 23.w),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 19.w, right: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Records',
                        style: GoogleFonts.dmSans(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_circle_right,
                        color: Color(0xffBA55D3),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 23.h),
              Container(
                height: 52.h,
                margin: EdgeInsets.only(left: 23.w, right: 23.w),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 19.w, right: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Sell Shares',
                        style: GoogleFonts.dmSans(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_circle_right,
                        color: Color(0xffBA55D3),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 13.h),
              Container(
                margin: EdgeInsets.only(left: 23.w, right: 23.w),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet',
                  style: GoogleFonts.dmSans(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(35, 35, 35, 0.75),
                  ),
                ),
              ),
              SizedBox(height: 33.h),
              //dropdown
              Container(
                padding: EdgeInsets.only(left: 23.w, right: 23.w),
                width: 390.w,
                height: 55.h,
                color: Color(0xffBA55D3),
                child: DropdownButtonFormField(
                  hint: Text(
                    'Updates',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  dropdownColor: Colors.black,
                  iconEnabledColor: Colors.white,
                  iconDisabledColor: Colors.white,
                  decoration: InputDecoration(border: InputBorder.none),
                  onChanged: (value) {
                    setState(
                      () {},
                    );
                  },
                  items: investDropDownItems,
                ),
              ),
              SizedBox(height: 18.h),
              Container(
                padding: EdgeInsets.only(left: 23.w, right: 23.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Updates',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xff232323),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'View All',
                            style: GoogleFonts.dmSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                height: 200.h,
                child: HorizontalList(),
                margin: EdgeInsets.only(left: 22.w),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}

class InvestmentsShares extends StatelessWidget {
  InvestmentsShares({Key? key, required this.value, required this.text})
      : super(key: key);
  final String value;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(35, 35, 35, 0.18),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value,
            style: GoogleFonts.dmSans(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff232323),
            ),
          ),
          Text(
            text,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color.fromRGBO(35, 35, 35, 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
