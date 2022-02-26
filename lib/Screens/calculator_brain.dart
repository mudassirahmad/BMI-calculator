import 'dart:math';

class CalculatorBrain {
  final int height, weight;
  double _bmi;
  CalculatorBrain({this.height, this.weight});

  String CalculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'Sirf apny hissay ka khaaya karo';
    } else if (_bmi > 18.5) {
      return 'Shabash! blkl thk ja rhy ho';
    } else {
      return 'Khaya piya kar jani kis baat ka gham hai...';
    }
  }
}
