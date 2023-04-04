import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'floating_action_button.dart';
import 'AppBarContainer.dart';

class SellShare extends StatelessWidget {
  const SellShare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarContainer(text: 'Sell Shares', icon: Icons.help_outline),
              SizedBox(height: 29.h),
              Container(
                  padding: EdgeInsets.only(left: 23.w, right: 23.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Shares to be sold?',
                        style: GoogleFonts.dmSans(
                            color: const Color(0xff232323),
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff232323),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 344.w,
                        height: 52.h,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.arrow_back_ios_rounded),
                              Text(
                                '1',
                                style: GoogleFonts.dmSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 31.h),
                      Text(
                        'Total Price',
                        style: GoogleFonts.dmSans(
                            color: const Color(0xff232323),
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff232323),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 344.w,
                        height: 52.h,
                        child: Center(
                          child: Text(
                            '\$250',
                            style: GoogleFonts.dmSans(
                                color: const Color(0xff232323),
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 58.h,
                          width: 344.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffBA55D3),
                          ),
                          child: Text(
                            'Sell Shares',
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatButton(),
    );
  }
}
