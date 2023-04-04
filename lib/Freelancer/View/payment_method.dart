import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int x = 0;
  int y = 1;
  int groupValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){Navigator
          .pop(context);},
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Payment Method',
          style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Add Billing Method',
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 3.0,
                            ),
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                              color: const Color.fromARGB(255, 210, 210, 210)),
                        ),
                        child: Row(
                          children:  [
                            Radio(
                                value: x ,activeColor: Theme.of(context).primaryColor, groupValue: groupValue, onChanged: (v){
                              setState(() {
                                if (y == 1){
                                  y = 0;
                                  x = 1;
                                }
                                else{
                                  y = 1;
                                  x = 0;
                                }
                                // print(v);
                              });
                            }),
                             SvgPicture.asset("assets/images/img_group52.svg"),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 1.0,
                            ),
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                              color: const Color.fromARGB(255, 210, 210, 210)),
                        ),
                        child: Row(
                          children:  [
                            Radio(
                                value: y,activeColor: Theme.of(context).primaryColor, groupValue: groupValue, onChanged: (v){

                                  setState(() {
                                    if (y == 1){
                                      y = 0;
                                      x = 1;
                                    }
                                    else{
                                      y = 1;
                                      x = 0;
                                    }

                                  });
                            }),
                            SvgPicture.asset("assets/images/img_group51_41X41.svg"),

                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Account Details',
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    MyTextFormField(hintText: 'First Name'),
                    MyTextFormField(hintText: 'Last Name'),
                    MyDropDownTextFiled(
                      hintText: 'Country',
                    ),
                    MyDropDownTextFiled(
                      hintText: 'City',
                    ),
                    MyTextFormField(hintText: 'Address'),
                    MyTextFormField(hintText: 'Postal Code'),
                    MyTextFormField(hintText: 'Phone Number'),
                    MyTextFormField(hintText: 'Account Number'),
                    MyTextFormField(hintText: 'CVC'),
                    MyTextFormField(hintText: 'Expiry Date'),
                    InkWell(
                      onTap: (){
                        showDialog(context: context, builder: (context){
                          return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(

                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 28.0),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center
                                                  ,
                                                  children: [
                                                    Text("Tax Details",style: GoogleFonts.dmSans(fontSize: 16.sp,fontWeight: FontWeight.w700),),
                                                  ],
                                                ),
                                              ),
                                            ),

                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap:(){Navigator.pop(context);},
                                                  child: Container(
                                                    height: 20,
                                                    width: 20,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      shape: BoxShape.circle,

                                                    ),
                                                    child: Center(child: Icon(Icons.close,color: Colors.white,size: 15,)),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/img_group51_41X41.svg"),
                                        ],
                                      ),
                                      SizedBox(height: 10.h,),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet risus a bibendum. Integer a nibh feugiat, congue nunc a"
                                     ,style: GoogleFonts.dmSans(fontSize: 9.sp,fontWeight: FontWeight.w700,color: Color(0xff232323)), ),
                                      SizedBox(height: 15,),
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/img_group52.svg"),
                                        ],
                                      ),
                                      SizedBox(height: 10.h,),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet risus a bibendum. Integer a nibh feugiat, congue nunc a"
                                        ,style: GoogleFonts.dmSans(fontSize: 9.sp,fontWeight: FontWeight.w700,color: Color(0xff232323)), ),
                                      SizedBox(height: 15,),
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/img_group51_41X41.svg"),
                                        ],
                                      ),
                                      SizedBox(height: 10.h,),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet risus a bibendum. Integer a nibh feugiat, congue nunc a"
                                        ,style: GoogleFonts.dmSans(fontSize: 9.sp,fontWeight: FontWeight.w700,color: Color(0xff232323)), ),
                                      SizedBox(height: 15,),
                                      Row(
                                        children: [
                                          SvgPicture.asset("assets/images/img_group52.svg"),
                                        ],
                                      ),
                                      SizedBox(height: 10.h,),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis sit amet risus a bibendum. Integer a nibh feugiat, congue nunc a"
                                        ,style: GoogleFonts.dmSans(fontSize: 9.sp,fontWeight: FontWeight.w700,color: Color(0xff232323)), )

                                    ],
                                  ),
                                ),
                              ));



                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: double.infinity,
                        height: 60,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor:Theme.of(context).primaryColor,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          onPressed: null,
                          child: const Text(
                            'Done',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
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

class MyTextFormField extends StatelessWidget {
  MyTextFormField({
    Key? key,
    this.hintText,
  }) : super(key: key);


  String? hintText;


  bool? downButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: TextFormField(

        keyboardType: TextInputType.text,
        decoration: InputDecoration(


          hintStyle:
              const TextStyle(color: Color(0xff232323),fontSize: 14,fontWeight: FontWeight.w400, fontFamily: 'DM Sans'),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          isDense: true,
          hintText: hintText ?? "",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

class MyDropDownTextFiled extends StatefulWidget {
  MyDropDownTextFiled({
    Key? key,
    this.hintText,
  }) : super(
          key: key,
        );
  String? hintText;


  @override
  State<MyDropDownTextFiled> createState() => _MyDropDownTextFiledState();
}

class _MyDropDownTextFiledState extends State<MyDropDownTextFiled> {
  final items = ['Hello', 'World'];

  var value;

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xff232323),
            // fontWeight: FontWeight.bold,
            fontFamily: "Ubuntu",
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
            hint: Text(
              widget.hintText ?? "",
              style: TextStyle(
                  color: Color(0xff232323),fontSize: 14,fontWeight: FontWeight.w400, fontFamily: 'DM Sans' ),
            ),
            isExpanded: true,
            value: value,
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => setState(() => this.value = value),
          ),
        ),
      ),
    );
  }
}
