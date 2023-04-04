import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Color(0xffBA55D3),
      child: Image(
        image: AssetImage('assets/floatButton.png'),
      ),
    );
  }
}
