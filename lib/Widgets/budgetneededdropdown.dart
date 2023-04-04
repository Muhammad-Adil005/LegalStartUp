import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class budgetNeededDropdown extends StatefulWidget {
  String? selectedItem;

  budgetNeededDropdown({Key? key, this.selectedItem}) : super(key: key);

  @override
  State<budgetNeededDropdown> createState() => _budgetNeededDropdownState();
}

class _budgetNeededDropdownState extends State<budgetNeededDropdown> {
  List DropDownList = [
    "Budget Needed",
    "100",
    "200",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DropdownButton(



        // hint: const Text("Select Bus"),
        icon: const Icon(
          Icons.arrow_drop_down_sharp,
          color: Color(0xffACA9A9),
        ),
        // value: selectedItemBus.isEmpty ? selectedItem : selectedItemBus,
        value: widget.selectedItem,
        isExpanded: true,
        elevation: 5,

        dropdownColor: Colors.white,
        focusColor: Color(0xffACA9A9),
        style: GoogleFonts.dmSans(
            textStyle: TextStyle(
          color: Color(0xffACA9A9),fontSize: 14
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
      ),
    );
  }
}
