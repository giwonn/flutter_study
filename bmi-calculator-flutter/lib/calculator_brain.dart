import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) return 'Overweight';
    if (_bmi > 18.5) return 'Normal';
    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'You have a higher then normal body weight. Try to exercise more.';
    if (_bmi > 18.5) return 'You have a normal body weight. Good job!';
    return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
