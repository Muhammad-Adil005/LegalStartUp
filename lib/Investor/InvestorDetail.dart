import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Components/CustomTextbox.dart';
import 'Components/Phonetextbox.dart';
import 'InvestorDetail2.dart';

class InvestorDetail extends StatefulWidget {
  InvestorDetail({Key? key}) : super(key: key);

  @override
  State<InvestorDetail> createState() => _InvestorDetailState();
}

class _InvestorDetailState extends State<InvestorDetail> {
  final items = [
    'Punjab',
    'Balochistan',
    'NWFP',
    'Sindh',
  ];
  final items2 = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antigua &amp; Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia",
    "Bosnia &amp; Herzegovina",
    "Botswana",
    "Brazil",
    "British Virgin Islands",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Cape Verde",
    "Cayman Islands",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Congo",
    "Cook Islands",
    "Costa Rica",
    "Cote D Ivoire",
    "Croatia",
    "Cruise Ship",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Estonia",
    "Ethiopia",
    "Falkland Islands",
    "Faroe Islands",
    "Fiji",
    "Finland",
    "France",
    "French Polynesia",
    "French West Indies",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Greece",
    "Greenland",
    "Grenada",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Isle of Man",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jersey",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kuwait",
    "Kyrgyz Republic",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macau",
    "Macedonia",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Mauritania",
    "Mauritius",
    "Mexico",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Namibia",
    "Nepal",
    "Netherlands",
    "Netherlands Antilles",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Norway",
    "Oman",
    "Pakistan",
    "Palestine",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Reunion",
    "Romania",
    "Russia",
    "Rwanda",
    "Saint Pierre &amp; Miquelon",
    "Samoa",
    "San Marino",
    "Satellite",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "South Africa",
    "South Korea",
    "Spain",
    "Sri Lanka",
    "St Kitts &amp; Nevis",
    "St Lucia",
    "St Vincent",
    "St. Lucia",
    "Sudan",
    "Suriname",
    "Swaziland",
    "Sweden",
    "Switzerland",
    "Syria",
    "Taiwan",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Timor L'Este",
    "Togo",
    "Tonga",
    "Trinidad &amp; Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks &amp; Caicos",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "Uruguay",
    "Uzbekistan",
    "Venezuela",
    "Vietnam",
    "Virgin Islands (US)",
    "Yemen",
    "Zambia",
    "Zimbabwe"
  ];
  String? value;
  String? value2;
  bool individualAccount = true;
  bool companyAccount = false;
  bool trustAccount = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          width: 390.w,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 23.w, right: 23.w),
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
                                color: Color(0xffBA55D3),
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
              SizedBox(height: 16.h),
              Container(
                width: 390.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 176.w,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xffBA55D3),
                                shape: BoxShape.circle),
                            height: 20,
                            width: 21,
                            child: Center(
                              child: Text(
                                '1',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Expanded(
                            child: Divider(
                              height: 1.h,
                              color: Color(0xff13B887),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle),
                            height: 20,
                            width: 21,
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Color(0xff232323)),
                              ),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Expanded(
                            child: Divider(
                              height: 1.h,
                              color: Color(0xff13B887),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle),
                            height: 20,
                            width: 21,
                            child: Center(
                                child: Text(
                              '3',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Color(0xff232323)),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Container(
                      width: 204.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Contact Info',
                            style: GoogleFonts.dmSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff232323)),
                          ),
                          Text(
                            'Personal Info',
                            style: GoogleFonts.dmSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff232323)),
                          ),
                          Text(
                            'Account Info',
                            style: GoogleFonts.dmSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff232323)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29.h),
              Expanded(
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 23.w, right: 23.w),
                        child: Text(
                          'Select Account Type',
                          style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff232323)),
                        ),
                      ),
                      SizedBox(height: 13.h),
                      Container(
                        padding: EdgeInsets.only(left: 23.w, right: 23.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    individualAccount = true;
                                    companyAccount = false;
                                    trustAccount = false;
                                  });
                                },
                                child: Container(
                                  height: 79.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.15),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 7.h, right: 7.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: individualAccount
                                                      ? Color(0xffBA55D3)
                                                      : Color(0xffBA55D3),
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                  shape: BoxShape.circle),
                                              height: 12,
                                              width: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 27.h,
                                        width: 21.w,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/individual_vector.png'),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Individual',
                                        style: GoogleFonts.dmSans(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff232323)),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    individualAccount = false;
                                    companyAccount = true;
                                    trustAccount = false;
                                  });
                                },
                                child: Container(
                                  height: 79.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.15),
                                        blurRadius:
                                            5, // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 7.h, right: 7.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: companyAccount
                                                      ? Color(0xffBA55D3)
                                                      : Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  shape: BoxShape.circle),
                                              height: 12,
                                              width: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 27.h,
                                        width: 29.w,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/company_vector.png'),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Company',
                                        style: GoogleFonts.dmSans(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff232323)),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    individualAccount = false;
                                    companyAccount = false;
                                    trustAccount = true;
                                  });
                                },
                                child: Container(
                                  height: 79.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.15),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 7.h, right: 7.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: trustAccount
                                                      ? Color(0xffBA55D3)
                                                      : Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  shape: BoxShape.circle),
                                              height: 12,
                                              width: 12,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 26.h,
                                        width: 23.w,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/trust_vector.png'),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Trust',
                                        style: GoogleFonts.dmSans(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff232323)),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 21.h),
                      Container(
                        padding: EdgeInsets.only(left: 23.w, right: 23.w),
                        child: Text(
                          'Enter Contact Info',
                          style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff232323)),
                        ),
                      ),
                      SizedBox(height: 23.h),
                      CustomTextbox(
                        text: 'Legal First Name',
                      ),
                      SizedBox(height: 10.h),
                      CustomTextbox(
                        text: 'Legal Last Name',
                      ),
                      SizedBox(height: 10.h),
                      Phonetextbox(
                        text: 'Phone No',
                      ),
                      SizedBox(height: 10.h),
                      CustomTextbox(
                        text: 'Primary Address',
                      ),
                      SizedBox(height: 10.h),
                      CustomTextbox(
                        text: 'Secondary Address',
                      ),
                      SizedBox(height: 10.h),
                      CustomTextbox(
                        text: 'City',
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        margin: EdgeInsets.only(left: 23.w, right: 23.w),
                        padding: EdgeInsets.only(left: 21.w, right: 21.w),
                        height: 58.h,
                        width: 390.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEEEEEE),
                        ),
                        child: new DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              "State",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffACA9A9),
                              ),
                            ),
                            value: value,
                            isExpanded: true,
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black),
                            iconSize: 36,
                            items: items.map(buildMenuItem).toList(),
                            onChanged: (value) => setState(
                              () => this.value = value,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Phonetextbox(
                        text: 'Zip Code',
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        margin: EdgeInsets.only(left: 23.w, right: 23.w),
                        padding: EdgeInsets.only(left: 21.w, right: 21.w),
                        height: 58.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEEEEEE),
                        ),
                        child: new DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              "Country",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffACA9A9),
                              ),
                            ),
                            value: value2,
                            isExpanded: true,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            iconSize: 36,
                            items: items2.map(buildMenuItem).toList(),
                            onChanged: (value) => setState(
                              () => this.value2 = value,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InvestorDetail2(),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 23.w, right: 23.w),
                          height: 58.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffBA55D3),
                          ),
                          child: Text(
                            'Proceed',
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
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

  DropdownMenuItem<String> buildMenuItem(String items) => DropdownMenuItem(
        value: items,
        child: Text(
          items,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            color: Color(0xffACA9A9),
            fontSize: 14,
          ),
        ),
      );
}
