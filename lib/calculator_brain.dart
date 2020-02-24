import 'dart:math';

class Result {
  final String title;
  final String interpretation;

  Result(this.title, this.interpretation);
}

class CalculatorBrain {
  final int weight;
  final int height;

  double _bmi;

  CalculatorBrain({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Result getResult() {
    if (_bmi >= 25) {
      return Result('Overweight',
          'You have a higher than normal weight. Try to exercise more');
    } else if (_bmi > 18.5) {
      return Result('Normal', 'You have a normal body weight. Good job!');
    } else {
      return Result('Underweight', 'You have a lower than normal weight.');
    }
  }
}
