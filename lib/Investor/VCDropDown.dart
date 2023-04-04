import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> get vcDropDownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Overview"), value: 'Overview'),
    DropdownMenuItem(child: Text("Team"), value: 'Team'),
    DropdownMenuItem(child: Text("Updates"), value: 'Updates'),
    DropdownMenuItem(child: Text("Discussions"), value: 'Discussions'),
  ];
  return menuItems;
}
