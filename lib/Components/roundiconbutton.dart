import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPress});

  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      onPressed: onPress,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}
