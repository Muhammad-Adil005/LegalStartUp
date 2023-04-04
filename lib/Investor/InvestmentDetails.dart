import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InvestmentDetails extends StatefulWidget {
  InvestmentDetails({Key? key}) : super(key: key);

  @override
  State<InvestmentDetails> createState() => _InvestmentDetailsState();
}

class _InvestmentDetailsState extends State<InvestmentDetails> {
  int counter = 1;
  bool value_ = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 23.h, right: 23.h),
        child: Column(
          children: [
            Container(
              width: 390.w,
              height: 111.h,
              child: Container(
                padding: EdgeInsets.only(top: 40.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new),
                    Text(
                      'Investment Details',
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
            ),
            Expanded(
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView(
                  children: [
                    SizedBox(height: 15.h),
                    Text(
                      'Total Shares',
                      style: GoogleFonts.dmSans(
                          color: Color(0xff232323),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Max 25',
                      style: GoogleFonts.dmSans(
                          color: Color.fromRGBO(35, 35, 35, 0.7),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      height: 52.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xff232323),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 20,
                            ),
                            onTap: () {
                              setState(() {
                                if (counter > 0) {
                                  counter = counter - 1;
                                }
                                print(counter);
                              });
                            },
                          ),
                          Text(
                            counter.toString(),
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          InkWell(
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            ),
                            onTap: () {
                              setState(() {
                                counter = counter + 1;
                                print(counter);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22.h),
                    Text(
                      'Enter Investment',
                      style: GoogleFonts.dmSans(
                        color: Color(0xff232323),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'How much amount do you want to invest?\nMin ivst \$25 - Max \$250000',
                      style: GoogleFonts.dmSans(
                          color: Color.fromRGBO(35, 35, 35, 0.7),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      height: 52.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xff232323),
                          width: 1.w,
                        ),
                      ),
                      child: Text(
                        '\＄25990',
                        style: GoogleFonts.dmSans(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 31.h),
                    Text(
                      'Payment Method',
                      style: GoogleFonts.dmSans(
                          color: Color(0xff232323),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 18.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40.h,
                          width: 165.w,
                          padding: EdgeInsets.only(left: 12.w, right: 12.w),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, 0.3)),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff13B887),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 20.h,
                                width: 78.w,
                                //height: 40.h,
                                //width: 120.w,
                                child: Image(
                                  image: AssetImage("assets/paypal.png"),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Container(
                          height: 40.h,
                          width: 165.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, 0.3)),
                              borderRadius: BorderRadius.circular(5)),
                          child: Container(
                            height: 41.h,
                            width: 41.w,
                            child: Image(
                              image: AssetImage("assets/mastercard.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 28.h),
                    InvestmentDetailFields(),
                    SizedBox(height: 10.h),
                    Text(
                      'Accept Terms & Regulations',
                      style: GoogleFonts.dmSans(
                          color: Color(0xff232323),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 13.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 18,
                          width: 18,
                          child: Checkbox(
                              side: BorderSide(
                                  color: Color.fromRGBO(35, 35, 35, 0.5),
                                  width: 2),
                              value: value_,
                              onChanged: (c) {
                                setState(() {
                                  value_ = value_ ? false : true;
                                });
                              }),
                        ),
                        SizedBox(width: 8.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Do you accept terms and regulations?',
                              style: GoogleFonts.dmSans(
                                color: Color.fromRGBO(35, 35, 35, 0.7),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Read Terms',
                              style: GoogleFonts.dmSans(
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(35, 35, 35, 0.7),
                                fontWeight: FontWeight.w700,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 31.h),
                    Container(
                      alignment: Alignment.center,
                      height: 58.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffBA55D3),
                      ),
                      child: Text(
                        'Request Investment',
                        style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InvestmentDetailFields extends StatelessWidget {
  const InvestmentDetailFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List paymentDetails = [
      'Name on Card',
      'Card Number',
      'Expiry Date',
      'CVC',
      'Zip Postal Code',
    ];
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            paymentDetails.length,
            (index) => TextFieldPaymentMethodDetails(
                hintText: paymentDetails[index])));
  }
}

class TextFieldPaymentMethodDetails extends StatelessWidget {
  TextFieldPaymentMethodDetails({Key? key, required this.hintText})
      : super(key: key);
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffEEEEEE),
          focusedBorder: OutlineInputBorder(
            borderSide: new BorderSide(color: Color(0xffEEEEEE)),
            borderRadius: new BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.white),
            borderRadius: new BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xffEEEEEE),
            ),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xffACA9A9),
          ),
        ),
        style: GoogleFonts.dmSans(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    );
  }
}
