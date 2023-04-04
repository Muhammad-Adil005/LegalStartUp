import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){Navigator.pop(context);},
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title:  Text(
          'Settings',
          style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: Text(
                  'Contact Details',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(9)),
                  child: const Icon(
                    Icons.email_rounded,
                    color: Colors.black,
                  ),
                ),
                title:  Text(
                  "Email Address",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                  size: 22.sp,
                ),
              ),
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(9)),
                  child: Icon(
                    Icons.call,
                    color: Colors.black,
                    size: 25.sp,
                  ),
                ),
                title:  Text(
                  "Phone Number",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                  size: 22,
                ),
              ),
               Text(
                'Security Details',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
               Divider(),
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(9)),
                  child: Icon(Icons.account_balance_wallet,color: Colors.black,)
                ),
                title:  Text(
                  "Change Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp),
                ),
                trailing:  Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                  size: 22.sp,
                ),
              ),
               Text('App Settings',
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              const Divider(),
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(9)),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  "App Notification",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp),
                ),
                trailing: CupertinoSwitch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = !isSwitched;
                    });
                  },
                  activeColor: Colors.black,
                  thumbColor: Theme.of(context).primaryColor,
                  trackColor: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}