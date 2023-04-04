import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dropDownDeliveryTime extends StatefulWidget {
  String? selectedItem;

  dropDownDeliveryTime({Key? key, this.selectedItem}) : super(key: key);

  @override
  State<dropDownDeliveryTime> createState() => _dropDownDeliveryTimeState();
}

class _dropDownDeliveryTimeState extends State<dropDownDeliveryTime> {
  List DropDownList = [
    "1Day",
    "2Day",
    "3Day",
    "4Day",
    "5Day",
    "6Day",
    "7Day",
    "15Day",
    "30Day",
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
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
        style: GoogleFonts.dmSans(
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
      ),
    );
  }
}
