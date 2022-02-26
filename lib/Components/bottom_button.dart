import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.text, this.navigate});
  final String text;
  final Function navigate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomCardColour,
        width: double.infinity,
        height: kHeightOfContainer,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
