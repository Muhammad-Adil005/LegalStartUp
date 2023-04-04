import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> get investDropDownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Updates"), value: 'Updates'),
  ];
  return menuItems;
}
