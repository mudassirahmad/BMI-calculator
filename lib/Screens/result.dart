import 'package:bmi_calculator/Screens/input_page.dart';
import 'package:bmi_calculator/Components/resuableCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import '../Components/resuableCard.dart';
import '../Components/bottom_button.dart';

class Result extends StatelessWidget {
  Result(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});
  final String bmiResult, resultText, interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Results"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTilte,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText, style: kresultTextStyle),
                  Text(bmiResult, style: kBmiTextStyle),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            text: "RE-CALCULATE",
            navigate: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
