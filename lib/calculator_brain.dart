import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Move Your Ass MORE Fatso!!!';
    } else if (_bmi > 18.5) {
      return 'You Norm Dude - Keep It Up!!!';
    } else {
      return 'You are Skinny Bitch Don\'t Die!!! Your Family Still Needs You... May be! XD';
    }
  }
}
