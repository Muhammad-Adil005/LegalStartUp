import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  List a = [
    "Increase in Shareholders",
    "Increase in Shareholders",
    "Increase in Shareholders"
  ];
  List b = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet"
  ];
  List c = ["Show more", "Show more", "Show more"];
  List pressedIndexes = [];
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
        itemCount: a.length,
        itemBuilder: (context, index) {
          final isSelected = pressedIndexes.contains(index);
          return InkWell(
            onTap: () {
              setState(() {
                if (isSelected) {
                  pressedIndexes.remove(index);
                } else {
                  pressedIndexes.clear();
                  pressedIndexes.add(index);
                }
              });
            },
            child: Container(
              width: 153.w,
              height: 165.h,
              margin: EdgeInsets.only(right: 23.w),
              decoration: BoxDecoration(
                color: isSelected ? Color(0xff232323) : Colors.white,
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(left: 11.w, right: 11.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.h),
                    Text(
                      a[index],
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: isSelected ? Colors.white : Color(0xff232323),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Flexible(
                      child: Text(
                        b[index],
                        style: GoogleFonts.dmSans(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: isSelected ? Colors.white : Color(0xff232323),
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      c[index],
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color(0xff13B887),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
