import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_stack/image_stack.dart';

class TeamContainer extends StatefulWidget {
  const TeamContainer({Key? key}) : super(key: key);

  @override
  State<TeamContainer> createState() => _TeamContainerState();
}

class _TeamContainerState extends State<TeamContainer> {
  List<String> images = [
    'assets/pic1.png',
    'assets/pic2.png',
    'assets/pic1.png',
    'assets/pic2.png',
    'assets/pic1.png',
    'assets/pic2.png',
    'assets/pic1.png',
    'assets/pic2.png',
    'assets/pic1.png',
    'assets/pic2.png',
  ];
  List names = [
    'Mike Dean',
    'Michael',
    'Mike Dean',
    'Michael',
    'Mike Dean',
    'Michael',
    'Mike Dean',
    'Michael',
    'Mike Dean',
    'Michael'
  ];
  List designations = [
    'CEO',
    'Designer',
    'CEO',
    'Designer',
    'CEO',
    'Designer',
    'CEO',
    'Designer',
    'CEO',
    'Designer'
  ];
  @override
  Widget build(BuildContext context) {
    final settings = RestrictedAmountPositions(
      maxAmountItems: 5,
      maxCoverage: 0.3,
      minCoverage: 0.3,
    );
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Container(
            padding: EdgeInsets.only(left: 23.w),
            width: 390.w,
            child: Row(
              children: [
                ImageStack(
                  imageSource: ImageSource.Asset,
                  imageList: images,
                  totalCount: images.length,
                  imageCount: 5,
                  imageRadius: 40,
                  imageBorderWidth: 0,
                  extraCountBorderColor: Colors.black,
                  extraCountTextStyle: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.black,
                  imageBorderColor: Colors.transparent,
                ),
                SizedBox(width: 11.w),
                Text(
                  'View Details',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26.h),
          Container(
            width: 390.w,
            margin: EdgeInsets.only(left: 23.w, right: 33.w),
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox();
              },
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(bottom: 23.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Image(
                                  image: AssetImage(images[index]),
                                ),
                              ),
                            ),
                            SizedBox(width: 9.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  names[index],
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color(0xff232323),
                                  ),
                                ),
                                Text(
                                  designations[index],
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(35, 35, 35, 0.75),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_circle_right,
                        color: Colors.black,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
