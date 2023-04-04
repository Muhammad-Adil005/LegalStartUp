import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Investor/DealTerms.dart';
import '../PitchDeck/PitchDeckScreen.dart';
import '../Team/TeamScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
        ),
        actions: [
          // Expanded(child: Container()),
          Stack(
            children: <Widget>[
              const SizedBox(
                width: 40,
                child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                    )),
              ),
              Positioned(
                top: 15,
                right: 1,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: const Color(0xffBA55D3),
                      borderRadius: BorderRadius.circular(200)),
                  child: const Text(
                    '  ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/images/Men1.png'),
                    ),
                    Positioned(
                      top: 0,
                      left: 70,
                      child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xff5F18F4),
                              borderRadius: BorderRadius.circular(200)),
                          child: const Icon(Icons.edit)),
                    )
                  ],
                ),
                Text(
                  'Mike Dean',
                  style: GoogleFonts.dmSans(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      'Istanbul, Turkey',
                      style: GoogleFonts.dmSans(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 140,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: const Color(0xffBA55D3),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        onPressed: null,
                        child: Text(
                          'View Record',
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            // fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 140,
                      // height: 60,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        onPressed: null,
                        child: const Text(
                          'Chat',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Text(
                              'About',
                              style: GoogleFonts.dmSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.edit),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'someone@gmail.com',
                            style: GoogleFonts.dmSans(
                              color: const Color(0xff232323),
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.phone,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '45132165416',
                            style: GoogleFonts.dmSans(
                              color: const Color(0xff232323),
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.location_on, color: Colors.grey),
                          ),
                          Text(
                            'Istanbul',
                            style: GoogleFonts.dmSans(
                              color: const Color(0xff232323),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Investment',
                            style: GoogleFonts.dmSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const Text('See All'),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 6,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(4, (index) => const MyCard()),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Documents',
                            style: GoogleFonts.dmSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const Text('See All'),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TeamScreenpage()),
                              );
                            },
                            child: Text(
                              'Team',
                              style: GoogleFonts.dmSans(
                                color: Colors.purple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PitchDeckScreenpage()),
                              );
                            },
                            child: Text(
                              'Pitch Deck',
                              style: GoogleFonts.dmSans(
                                fontSize: 20,
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DealTerms()),
                              );
                            },
                            child: Text(
                              'Deals Terms',
                              style: GoogleFonts.dmSans(
                                fontSize: 20,
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Image(image: AssetImage('assets/images/M.png')),
              ),
              Text(
                'Moto Enc',
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    '\$1500',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  const Icon(
                    CupertinoIcons.arrow_right,
                    color: Color(0xff13B887),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
