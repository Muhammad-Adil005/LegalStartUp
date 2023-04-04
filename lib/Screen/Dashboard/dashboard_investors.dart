import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardInvestors extends StatelessWidget {
  const DashBoardInvestors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Investors Dashboard',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Color(0xff000000),
              ),
            ),
          ),
          actions: [
            // Expanded(child: Container()),
            Stack(
              children: <Widget>[
                Container(
                  width: 40,
                  child: const CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.notifications_none_sharp,
                        color: Colors.white,
                      )),
                ),
                Positioned(
                    top: 17,
                    right: 2,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          color: Color(0xff13B887),
                          borderRadius: BorderRadius.circular(200)),
                      child: Text(
                        '',
                        style: TextStyle(color: Color(0xff13B887)),
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
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.5,
                padding: EdgeInsets.all(16),
                // margin: EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color(0xff232323),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      '\$ 5404.0',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Text(
                      'Your balance',
                      style: TextStyle(color: Color(0xff13B887)),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 1.02,
                      height: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                          color: Color(0xff13B887),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Widthdraw',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Widthdrawals',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    Container(
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
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(5, (index) => Widthdrawals()),
              )
            ],
          ),
        ));
  }
}

class Widthdrawals extends StatelessWidget {
  const Widthdrawals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: -3,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(100)),
          child: Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$250',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            Text(
              '20,Jun,2022',
              style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$250',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            Text(
              '20,Jun,2022',
              style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
