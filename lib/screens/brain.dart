class Brain {
  Brain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;
  String numberResult() {
    _bmi = weight / (((height * height) / 10000) * ((height * height) / 10000));
    return _bmi.toStringAsFixed(1);
  }

  String getStatus() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi >= 18.5)
      return 'Normal';
    else
      return ('Underweight');
  }

  String getDescription() {
    if (_bmi >= 25)
      return 'You have a higher than normal body weight.';
    else if (_bmi >= 18.5)
      return 'You have a normal body weight.';
    else
      return 'You have a lower than normal body weight.';
  }
}
