import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Constants/colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List userDetails = [
      "Sheheer Ahmed",
      "Graphics Designer",
      "Florida, USA",
      "English",
      "About Me"
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: null,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded, color: Colors.black,)),
        actions: [
          // Expanded(child: Container()),
          Stack(
            children: <Widget>[
              Container(
                width: 50,
                child: const CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.notifications_rounded,
                      color: Colors.white,
                    )),
              ),
              Positioned(
                  top: 13,
                  right: 5,
                  child: Container(
                    width: 15,
                    height: 15,
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
            width: 20,
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 20, left: 20),
        decoration: BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      height: 107.h,
                      width:107.w,
                      decoration: BoxDecoration(
                          // color: Colors.red
                          ),

                      child: const CircleAvatar(
                          radius: 100,
                          backgroundColor: primaryColor,
                          child: Image(
                              image: AssetImage(
                                  'assets/images/img_ellipse75.png'))),
                    ),
                    Positioned.fill(
                      bottom: -5,

                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Theme.of(context).primaryColor,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                Text(
                  'Change Profile Picture',
                  style: TextStyle(color: Color(0xff232323),fontWeight: FontWeight.w400,fontSize: 14),

      ),
              ],
            ),
            Divider(
              color: Colors.grey.shade400,
              height: 30.h,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        suffixIcon: Icon(Icons.edit),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: userDetails[0],
                        hintStyle: TextStyle(color: Color(0xff232323),fontWeight: FontWeight.w400,fontSize: 14)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        enabled: false,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        suffixIcon: Icon(Icons.edit),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: userDetails[1],
                        hintStyle: TextStyle(color: Color(0xff232323),fontWeight: FontWeight.w400,fontSize: 14)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        suffixIcon: Icon(Icons.edit),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: userDetails[2],
                        hintStyle: TextStyle(color: Color(0xff232323),fontWeight: FontWeight.w400,fontSize: 14)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        suffixIcon: Icon(Icons.edit),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: userDetails[3],
                        hintStyle: TextStyle(color: Color(0xff232323),fontWeight: FontWeight.w400,fontSize: 14)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  child: TextFormField(
                    enabled: false,
                    minLines: 2,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'About Me',
                      hintStyle: TextStyle(color: Color(0xff232323),fontWeight: FontWeight.w400,fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                  // child: SizedBox(
                  //   height: 200,
                  //   child: TextField(
                  //     style: TextStyle(
                  //       height: 10,
                  //     ),
                  //     // keyboardType: TextInputType.multiline,
                  //     decoration: InputDecoration(
                  //
                  //         border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10.0),
                  //
                  //           borderSide: BorderSide(color: Colors.black),
                  //         ),
                  //         contentPadding: EdgeInsets.symmetric(horizontal: 20,),
                  //         hintText: userDetails[4],
                  //         hintStyle: TextStyle(
                  //             color: Colors.black
                  //         )
                  //     ),
                  //   ),
                  // ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color:Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Done',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            Spacer()
            // Column(
            //   children: List.generate(2, (index) => GetProfileFields(str_data: userDetails[index],),),
            // )
          ],
        ),
      ),
    );
  }
}
//
// class GetProfileFields extends StatefulWidget {
//   GetProfileFields({Key? key, this.str_data = ''}) : super(key: key);
//   String? str_data;
//   @override
//   State<GetProfileFields> createState() => _GetProfileFieldsState();
// }
//
// class _GetProfileFieldsState extends State<GetProfileFields> {
//   get str_data => str_data;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//           suffixIcon: Icon(Icons.edit),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide: BorderSide(color: Colors.black),
//
//           ),
//           hintText: str_data??"",
//           hintStyle: TextStyle(
//               color: Colors.black
//           )
//       ),
//     );
//   }
// }
