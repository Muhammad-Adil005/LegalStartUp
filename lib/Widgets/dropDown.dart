import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dropDown extends StatefulWidget {
  String? selectedItem;

  dropDown({Key? key, this.selectedItem}) : super(key: key);

  @override
  State<dropDown> createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {
  List DropDownList = [
    "Gender",
    "Male",
    "Female",
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
      elevation: 5,

      dropdownColor: Colors.white,
      focusColor: Colors.grey,
      style: GoogleFonts.dmSans(
          textStyle: TextStyle(
        color: Colors.grey,
      )),
      borderRadius: BorderRadius.circular(20),
      iconSize: 30,

      underline: Container(color: Colors.white),
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
