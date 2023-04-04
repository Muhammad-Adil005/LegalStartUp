import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dropDownHours extends StatefulWidget {
  String? selectedItem;

  dropDownHours({Key? key, this.selectedItem}) : super(key: key);

  @override
  State<dropDownHours> createState() => _dropDownHoursState();
}

class _dropDownHoursState extends State<dropDownHours> {
  List DropDownList = [
    "Working hours",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // hint: const Text("Select Bus"),
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.grey,
      ),
      // value: selectedItemBus.isEmpty ? selectedItem : selectedItemBus,
      value: widget.selectedItem,
      isExpanded: true,
      elevation: 0,
      dropdownColor: Colors.white,
      focusColor: Colors.grey,
      style: GoogleFonts.workSans(
          textStyle: TextStyle(
        color: Colors.grey,
      )),
      borderRadius: BorderRadius.circular(20),
      iconSize: 30,

      underline: Container(color: Colors.transparent),
      items: DropDownList.map(
        (title) => DropdownMenuItem(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'dmSans'),
          ),
          value: title,
        ),
      ).toList(),
      onChanged: (value) {
        setState(() {
          widget.selectedItem = value.toString();
          // selectGender = widget.selectedItem!;
          print(widget.selectedItem);
        });
      },
    );
  }
}
