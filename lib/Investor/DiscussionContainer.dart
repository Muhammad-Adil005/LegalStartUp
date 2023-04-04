import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscussionContainer extends StatelessWidget {
  const DiscussionContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 23.w, right: 23.w),
      width: 390.w,
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 26.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Comments',
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff232323),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 13.w, top: 2.h),
                      child: Row(
                        children: [
                          Text(
                            'Newest',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xff232323),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter comment here',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    hintStyle: GoogleFonts.dmSans(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(35, 35, 35, 0.75),
                    ),
                  ),
                ),
                SizedBox(height: 21.h),
                Divider(
                  color: Color.fromRGBO(201, 203, 203, 0.61),
                  thickness: 0.8,
                ),
                SizedBox(height: 11.h),
                Container(
                  child: DiscussionList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DiscussionList extends StatefulWidget {
  const DiscussionList({Key? key}) : super(key: key);

  @override
  State<DiscussionList> createState() => _DiscussionListState();
}

class _DiscussionListState extends State<DiscussionList> {
  List images = [
    'assets/pic1.png',
    'assets/pic2.png',
    'assets/pic1.png',
    'assets/pic2.png',
    'assets/pic1.png',
    'assets/pic2.png',
  ];
  List names = ['Bondu', 'Loru', 'Bondu', 'Loru', 'Bondu', 'Loru'];
  List message = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet',
  ];
  List time = ['2', '2', '2', '2', '2', '2'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
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
              width: 390.w,
              padding: EdgeInsets.only(bottom: 11),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            SizedBox(
                              width: 7.w,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 3.h),
                              child: Text(
                                names[index],
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff232323),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 12.w, top: 7.h),
                        child: Text(
                          time[index] + ' Days Ago',
                          style: GoogleFonts.dmSans(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff232323),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    //margin: EdgeInsets.only(left: 33 + (screenWidth * 0.03)),
                    margin: EdgeInsets.only(left: 63.w),
                    child: Text(
                      message[index],
                      style: GoogleFonts.dmSans(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(35, 35, 35, 0.75),
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Container(
                    //margin: EdgeInsets.only(left: 33 + (screenWidth * 0.03)),
                    margin: EdgeInsets.only(left: 63.w),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/heart.png'),
                          width: 12.w,
                          height: 11.h,
                          color: Color(0xff13B887),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          'Like',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 9,
                            color: Color.fromRGBO(35, 35, 35, 0.75),
                          ),
                        ),
                        SizedBox(width: 30.w),
                        Image(
                          image: AssetImage('assets/reply.png'),
                          width: 10.w,
                          height: 7.h,
                          color: Color(0xff13B887),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          'Reply',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 9,
                            color: Color.fromRGBO(35, 35, 35, 0.75),
                          ),
                        ),
                        SizedBox(width: 30.w),
                        Image(
                          image: AssetImage('assets/replies.png'),
                          width: 14.w,
                          height: 9.h,
                          color: Color(0xff13B887),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          '158 Replies',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 9,
                            color: Color.fromRGBO(35, 35, 35, 0.75),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Divider(
                    color: Color.fromRGBO(201, 203, 203, 0.61),
                    thickness: 0.8,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
